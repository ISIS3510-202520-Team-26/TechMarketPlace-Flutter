import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/entities/search_filters.dart';
import 'package:market_flutter/domain/repositories/search_repository.dart';

class SearchListingsUc {
  final SearchRepository repo;
  SearchListingsUc(this.repo);

  Future<Result<List<ListingBase>>> call(SearchFilters filters) => repo.search(filters);
}
