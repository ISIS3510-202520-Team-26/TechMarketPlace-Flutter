// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KycVerification _$KycVerificationFromJson(
  Map<String, dynamic> json,
) => _KycVerification(
  id: const UuidConverter().fromJson(json['id'] as String),
  userId: const UuidConverter().fromJson(json['userId'] as String),
  provider: json['provider'] as String,
  status: $enumDecode(_$KycStatusEnumMap, json['status']),
  documentType: json['documentType'] as String?,
  documentNumberEnc: (json['documentNumberEnc'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  evidenceUrls:
      (json['evidenceUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  notes: json['notes'] as String?,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$KycVerificationToJson(_KycVerification instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'userId': const UuidConverter().toJson(instance.userId),
      'provider': instance.provider,
      'status': _$KycStatusEnumMap[instance.status]!,
      'documentType': instance.documentType,
      'documentNumberEnc': instance.documentNumberEnc,
      'evidenceUrls': instance.evidenceUrls,
      'notes': instance.notes,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
    };

const _$KycStatusEnumMap = {
  KycStatus.none: 'none',
  KycStatus.pending: 'pending',
  KycStatus.verified: 'verified',
  KycStatus.rejected: 'rejected',
};

_KycVerificationDto _$KycVerificationDtoFromJson(Map<String, dynamic> json) =>
    _KycVerificationDto(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      provider: json['provider'] as String,
      status: json['status'] as String,
      documentType: json['document_type'] as String?,
      documentNumberEnc: (json['document_number_enc'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      evidenceUrls: json['evidence_urls'] as List<dynamic>?,
      notes: json['notes'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$KycVerificationDtoToJson(_KycVerificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'provider': instance.provider,
      'status': instance.status,
      'document_type': instance.documentType,
      'document_number_enc': instance.documentNumberEnc,
      'evidence_urls': instance.evidenceUrls,
      'notes': instance.notes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
