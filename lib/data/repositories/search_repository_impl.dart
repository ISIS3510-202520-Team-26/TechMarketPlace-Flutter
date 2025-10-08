import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/datasources/local/cache_filters_ds.dart';
import 'package:market_flutter/data/datasources/remote/api_search_ds.dart';
import 'package:market_flutter/data/mappers/listing_mapper.dart';
import 'package:market_flutter/domain/entities/category.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/entities/search_filters.dart';
import 'package:market_flutter/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final ApiSearchDs remote;
  final CacheFiltersDs cache;

  SearchRepositoryImpl({required this.remote, required this.cache});

  @override
  Future<Result<List<ListingBase>>> search(SearchFilters filters) async {
    try {
      final payload = <String, dynamic>{
        if (filters.query != null && filters.query!.trim().isNotEmpty) 'query': filters.query,
        if (filters.category != null) 'category': filters.category!.name,
        if (filters.campus != null) 'campus': filters.campus,
        if (filters.minPrice != null) 'minPrice': filters.minPrice,
        if (filters.maxPrice != null) 'maxPrice': filters.maxPrice,
        if (filters.brand != null) 'brand': filters.brand,
        if (filters.condition != null) 'condition': filters.condition!.name,
        if (filters.availability != null) 'availability': filters.availability,
        if (filters.sort != null) 'sort': filters.sort,
        if (filters.category != null)
          'type': switch (filters.category!) {
            CatalogCategory.TEXTBOOKS => 'book',
            CatalogCategory.ELECTRONICS || CatalogCategory.PHONES => 'tech',
            _ => 'material',
          },
      };

      cache.saveFilters(payload);
      final list = await remote.search(payload);

      final domain = <ListingBase>[];
      for (final dto in list) {
        final r = listingFromDto(dto);
        if (r.isOk) domain.add(r.value);
      }
      return Ok(domain);
    } catch (e) {
      return Err(ServerFailure('search failed: $e'));
    }
  }

  @override
  Future<Result<List<String>>> suggestQueries(String prefix) async {
    try {
      final s = await remote.suggest(prefix);
      cache.saveSuggestions(s);
      return Ok(s);
    } catch (e) {
      return Err(ServerFailure('suggest failed: $e'));
    }
  }
}
