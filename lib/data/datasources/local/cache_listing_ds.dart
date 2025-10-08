import 'package:market_flutter/data/dtos/listing_dto.dart';

class CacheListingDs {
  final Map<String, ListingDto> _cache = {};
  final Set<String> _favorites = {};

  ListingDto? get(String id) => _cache[id];

  void put(ListingDto dto) => _cache[dto.id] = dto;

  void toggleFavorite(String id) {
    if (_favorites.contains(id)) {
      _favorites.remove(id);
    } else {
      _favorites.add(id);
    }
  }

  bool isFavorite(String id) => _favorites.contains(id);
}
