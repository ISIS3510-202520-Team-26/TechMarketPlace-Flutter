// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: const UuidConverter().fromJson(json['id'] as String),
  email: Email.fromJson(json['email']),
  phone: json['phone'] == null ? null : Phone.fromJson(json['phone']),
  passwordHash: json['passwordHash'] as String?,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  kycStatus: $enumDecode(_$KycStatusEnumMap, json['kycStatus']),
  emailVerified: json['emailVerified'] as bool,
  phoneVerified: json['phoneVerified'] as bool,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'email': instance.email,
  'phone': instance.phone,
  'passwordHash': instance.passwordHash,
  'role': _$UserRoleEnumMap[instance.role]!,
  'kycStatus': _$KycStatusEnumMap[instance.kycStatus]!,
  'emailVerified': instance.emailVerified,
  'phoneVerified': instance.phoneVerified,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
  'deletedAt': _$JsonConverterToJson<String, DateTime>(
    instance.deletedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.moderator: 'moderator',
  UserRole.admin: 'admin',
};

const _$KycStatusEnumMap = {
  KycStatus.none: 'none',
  KycStatus.pending: 'pending',
  KycStatus.verified: 'verified',
  KycStatus.rejected: 'rejected',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: json['id'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  passwordHash: json['password_hash'] as String?,
  role: json['role'] as String,
  kycStatus: json['kyc_status'] as String,
  emailVerified: json['email_verified'] as bool,
  phoneVerified: json['phone_verified'] as bool,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  deletedAt: json['deleted_at'] as String?,
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'phone': instance.phone,
  'password_hash': instance.passwordHash,
  'role': instance.role,
  'kyc_status': instance.kycStatus,
  'email_verified': instance.emailVerified,
  'phone_verified': instance.phoneVerified,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'deleted_at': instance.deletedAt,
};
