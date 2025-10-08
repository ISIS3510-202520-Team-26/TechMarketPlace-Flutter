import 'package:json_annotation/json_annotation.dart';

part 'order_dto.g.dart';

@JsonSerializable()
class OrderDto {
  final String id;
  final String listingId;
  final String buyerId;
  final double amount;
  final String currency;
  final String status;

  OrderDto({
    required this.id,
    required this.listingId,
    required this.buyerId,
    required this.amount,
    required this.currency,
    required this.status,
  });

  factory OrderDto.fromJson(Map<String, dynamic> json) => _$OrderDtoFromJson(json);
  Map<String, dynamic> toJson() => _$OrderDtoToJson(this);
}
