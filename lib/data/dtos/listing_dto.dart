import 'package:json_annotation/json_annotation.dart';

part 'listing_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ListingDto {
  final String id;
  final String sellerId;
  final double priceAmount;
  final String priceCurrency;
  final String? campus;
  final List<String> photos;
  final String type;
  final Map<String, dynamic> details;

  ListingDto({
    required this.id,
    required this.sellerId,
    required this.priceAmount,
    required this.priceCurrency,
    this.campus,
    this.photos = const [],
    required this.type,
    this.details = const {},
  });

  factory ListingDto.fromJson(Map<String, dynamic> json) => _$ListingDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ListingDtoToJson(this);
}
