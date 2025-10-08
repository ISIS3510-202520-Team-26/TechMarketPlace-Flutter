import 'package:market_flutter/data/adapters/mock/mock_api_client.dart';
import 'package:market_flutter/data/dtos/listing_dto.dart';

class ApiListingDs {
  final MockApiClient _client;
  ApiListingDs(this._client);

  Future<ListingDto?> getById(String id) async {
    final json = await _client.getListing(id);
    return json == null ? null : ListingDto.fromJson(json);
  }

  Future<ListingDto> create(ListingDto draft) async {
    final json = await _client.createListing(draft.toJson());
    return ListingDto.fromJson(json);
  }

  Future<void> toggleFavorite(String id) => _client.toggleFavorite(id);
}
