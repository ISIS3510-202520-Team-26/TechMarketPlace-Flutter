import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/repositories/listing_repository.dart';

class GetListingUc {
  final ListingRepository repo;
  GetListingUc(this.repo);

  Future<Result<ListingBase>> call(String id) => repo.getById(id);
}
