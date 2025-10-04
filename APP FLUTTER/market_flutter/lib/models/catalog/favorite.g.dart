// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Favorite _$FavoriteFromJson(Map<String, dynamic> json) => _Favorite(
  id: const UuidConverter().fromJson(json['id'] as String),
  userId: const UuidConverter().fromJson(json['userId'] as String),
  listingId: const UuidConverter().fromJson(json['listingId'] as String),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$FavoriteToJson(_Favorite instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'userId': const UuidConverter().toJson(instance.userId),
  'listingId': const UuidConverter().toJson(instance.listingId),
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
};

_FavoriteDto _$FavoriteDtoFromJson(Map<String, dynamic> json) => _FavoriteDto(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  listingId: json['listing_id'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$FavoriteDtoToJson(_FavoriteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'listing_id': instance.listingId,
      'created_at': instance.createdAt,
    };
