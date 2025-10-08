import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/entities/search_filters.dart';

abstract class SearchRepository {
  Future<Result<List<ListingBase>>> search(SearchFilters filters);
}
