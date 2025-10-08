import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/listing_repository.dart';

class ToggleFavoriteUc {
  final ListingRepository repo;
  ToggleFavoriteUc(this.repo);

  Future<Result<void>> call(String listingId) => repo.toggleFavorite(listingId);
}
