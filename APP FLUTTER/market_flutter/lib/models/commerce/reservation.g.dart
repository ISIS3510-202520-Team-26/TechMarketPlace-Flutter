// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingReservation _$ListingReservationFromJson(
  Map<String, dynamic> json,
) => _ListingReservation(
  id: const UuidConverter().fromJson(json['id'] as String),
  listingId: const UuidConverter().fromJson(json['listingId'] as String),
  buyerId: const UuidConverter().fromJson(json['buyerId'] as String),
  status: $enumDecode(_$ReservationStatusEnumMap, json['status']),
  expiresAt: const UtcDateTimeConverter().fromJson(json['expiresAt'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$ListingReservationToJson(_ListingReservation instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'listingId': const UuidConverter().toJson(instance.listingId),
      'buyerId': const UuidConverter().toJson(instance.buyerId),
      'status': _$ReservationStatusEnumMap[instance.status]!,
      'expiresAt': const UtcDateTimeConverter().toJson(instance.expiresAt),
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.active: 'active',
  ReservationStatus.expired: 'expired',
  ReservationStatus.cancelled: 'cancelled',
};

_ListingReservationDto _$ListingReservationDtoFromJson(
  Map<String, dynamic> json,
) => _ListingReservationDto(
  id: json['id'] as String,
  listingId: json['listing_id'] as String,
  buyerId: json['buyer_id'] as String,
  status: json['status'] as String,
  expiresAt: json['expires_at'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ListingReservationDtoToJson(
  _ListingReservationDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'listing_id': instance.listingId,
  'buyer_id': instance.buyerId,
  'status': instance.status,
  'expires_at': instance.expiresAt,
  'created_at': instance.createdAt,
};
