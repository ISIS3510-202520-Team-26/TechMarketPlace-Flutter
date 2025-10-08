// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => OrderDto(
  id: json['id'] as String,
  listingId: json['listingId'] as String,
  buyerId: json['buyerId'] as String,
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$OrderDtoToJson(OrderDto instance) => <String, dynamic>{
  'id': instance.id,
  'listingId': instance.listingId,
  'buyerId': instance.buyerId,
  'amount': instance.amount,
  'currency': instance.currency,
  'status': instance.status,
};
