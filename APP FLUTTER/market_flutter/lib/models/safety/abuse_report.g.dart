// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abuse_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AbuseReport _$AbuseReportFromJson(Map<String, dynamic> json) => _AbuseReport(
  id: const UuidConverter().fromJson(json['id'] as String),
  reporterId: const UuidConverter().fromJson(json['reporterId'] as String),
  targetType: $enumDecode(_$AbuseTargetEnumMap, json['targetType']),
  targetId: const UuidConverter().fromJson(json['targetId'] as String),
  reason: $enumDecode(_$AbuseReasonEnumMap, json['reason']),
  description: json['description'] as String?,
  status: $enumDecode(_$AbuseStatusEnumMap, json['status']),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  resolvedAt: _$JsonConverterFromJson<String, DateTime>(
    json['resolvedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$AbuseReportToJson(_AbuseReport instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'reporterId': const UuidConverter().toJson(instance.reporterId),
      'targetType': _$AbuseTargetEnumMap[instance.targetType]!,
      'targetId': const UuidConverter().toJson(instance.targetId),
      'reason': _$AbuseReasonEnumMap[instance.reason]!,
      'description': instance.description,
      'status': _$AbuseStatusEnumMap[instance.status]!,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'resolvedAt': _$JsonConverterToJson<String, DateTime>(
        instance.resolvedAt,
        const UtcDateTimeConverter().toJson,
      ),
    };

const _$AbuseTargetEnumMap = {
  AbuseTarget.user: 'user',
  AbuseTarget.listing: 'listing',
  AbuseTarget.message: 'message',
  AbuseTarget.order: 'order',
};

const _$AbuseReasonEnumMap = {
  AbuseReason.spam: 'spam',
  AbuseReason.fraud: 'fraud',
  AbuseReason.abuse: 'abuse',
  AbuseReason.other: 'other',
};

const _$AbuseStatusEnumMap = {
  AbuseStatus.open: 'open',
  AbuseStatus.underReview: 'under_review',
  AbuseStatus.resolved: 'resolved',
  AbuseStatus.rejected: 'rejected',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_AbuseReportDto _$AbuseReportDtoFromJson(Map<String, dynamic> json) =>
    _AbuseReportDto(
      id: json['id'] as String,
      reporterId: json['reporter_id'] as String,
      targetType: json['target_type'] as String,
      targetId: json['target_id'] as String,
      reason: json['reason'] as String,
      description: json['description'] as String?,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
      resolvedAt: json['resolved_at'] as String?,
    );

Map<String, dynamic> _$AbuseReportDtoToJson(_AbuseReportDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reporter_id': instance.reporterId,
      'target_type': instance.targetType,
      'target_id': instance.targetId,
      'reason': instance.reason,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.createdAt,
      'resolved_at': instance.resolvedAt,
    };
