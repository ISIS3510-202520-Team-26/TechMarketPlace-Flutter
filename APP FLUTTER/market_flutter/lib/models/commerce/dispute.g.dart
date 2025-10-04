// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dispute _$DisputeFromJson(Map<String, dynamic> json) => _Dispute(
  id: const UuidConverter().fromJson(json['id'] as String),
  orderId: const UuidConverter().fromJson(json['orderId'] as String),
  openedBy: $enumDecode(_$DisputeActorEnumMap, json['openedBy']),
  reason: $enumDecode(_$DisputeReasonEnumMap, json['reason']),
  description: json['description'] as String?,
  status: $enumDecode(_$DisputeStatusEnumMap, json['status']),
  resolutionNotes: json['resolutionNotes'] as String?,
  openedAt: const UtcDateTimeConverter().fromJson(json['openedAt'] as String),
  closedAt: _$JsonConverterFromJson<String, DateTime>(
    json['closedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$DisputeToJson(_Dispute instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'orderId': const UuidConverter().toJson(instance.orderId),
  'openedBy': _$DisputeActorEnumMap[instance.openedBy]!,
  'reason': _$DisputeReasonEnumMap[instance.reason]!,
  'description': instance.description,
  'status': _$DisputeStatusEnumMap[instance.status]!,
  'resolutionNotes': instance.resolutionNotes,
  'openedAt': const UtcDateTimeConverter().toJson(instance.openedAt),
  'closedAt': _$JsonConverterToJson<String, DateTime>(
    instance.closedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

const _$DisputeActorEnumMap = {
  DisputeActor.buyer: 'buyer',
  DisputeActor.seller: 'seller',
};

const _$DisputeReasonEnumMap = {
  DisputeReason.notAsDescribed: 'not_as_described',
  DisputeReason.damaged: 'damaged',
  DisputeReason.lateDelivery: 'late_delivery',
  DisputeReason.noShow: 'no_show',
  DisputeReason.other: 'other',
};

const _$DisputeStatusEnumMap = {
  DisputeStatus.open: 'open',
  DisputeStatus.underReview: 'under_review',
  DisputeStatus.resolvedRefund: 'resolved_refund',
  DisputeStatus.resolvedRelease: 'resolved_release',
  DisputeStatus.closed: 'closed',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_DisputeDto _$DisputeDtoFromJson(Map<String, dynamic> json) => _DisputeDto(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  openedBy: json['opened_by'] as String,
  reason: json['reason'] as String,
  description: json['description'] as String?,
  status: json['status'] as String,
  resolutionNotes: json['resolution_notes'] as String?,
  openedAt: json['opened_at'] as String,
  closedAt: json['closed_at'] as String?,
);

Map<String, dynamic> _$DisputeDtoToJson(_DisputeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'opened_by': instance.openedBy,
      'reason': instance.reason,
      'description': instance.description,
      'status': instance.status,
      'resolution_notes': instance.resolutionNotes,
      'opened_at': instance.openedAt,
      'closed_at': instance.closedAt,
    };
