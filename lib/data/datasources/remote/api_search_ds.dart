import 'package:market_flutter/data/adapters/mock/mock_api_client.dart';
import 'package:market_flutter/data/dtos/listing_dto.dart';

class ApiSearchDs {
  final MockApiClient _client;
  ApiSearchDs(this._client);

  Future<List<ListingDto>> search(Map<String, dynamic> filters) async {
    final list = await _client.search(filters);
    return list.map(ListingDto.fromJson).toList(growable: false);
  }

  Future<List<String>> suggest(String prefix) => _client.suggestQueries(prefix);

  Future<List<String>> categories() => _client.categories();
}
