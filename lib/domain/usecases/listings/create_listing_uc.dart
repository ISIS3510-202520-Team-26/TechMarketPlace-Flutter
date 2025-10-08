import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/repositories/listing_repository.dart';

class CreateListingUc {
  final ListingRepository repo;
  CreateListingUc(this.repo);

  Future<Result<ListingBase>> call(ListingBase draft) => repo.create(draft);
}
