// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  id: const UuidConverter().fromJson(json['id'] as String),
  orderId: const UuidConverter().fromJson(json['orderId'] as String),
  raterId: const UuidConverter().fromJson(json['raterId'] as String),
  ratedUserId: const UuidConverter().fromJson(json['ratedUserId'] as String),
  role: $enumDecode(_$ReviewRoleEnumMap, json['role']),
  rating: Rating.fromJson(json['rating']),
  comment: json['comment'] as String?,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'orderId': const UuidConverter().toJson(instance.orderId),
  'raterId': const UuidConverter().toJson(instance.raterId),
  'ratedUserId': const UuidConverter().toJson(instance.ratedUserId),
  'role': _$ReviewRoleEnumMap[instance.role]!,
  'rating': instance.rating,
  'comment': instance.comment,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
};

const _$ReviewRoleEnumMap = {
  ReviewRole.buyer: 'buyer',
  ReviewRole.seller: 'seller',
};

_ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => _ReviewDto(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  raterId: json['rater_id'] as String,
  ratedUserId: json['rated_user_id'] as String,
  role: json['role'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ReviewDtoToJson(_ReviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'rater_id': instance.raterId,
      'rated_user_id': instance.ratedUserId,
      'role': instance.role,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt,
    };
