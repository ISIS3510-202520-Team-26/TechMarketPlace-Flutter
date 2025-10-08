import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';

abstract class ListingRepository {
  Future<Result<ListingBase>> getById(String id);
  Future<Result<ListingBase>> create(ListingBase draft);
  Future<Result<void>> toggleFavorite(String id);
}
