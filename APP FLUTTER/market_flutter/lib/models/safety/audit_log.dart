import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';
import '../commons/value_objects.dart' show JsonMap;

part 'audit_log.freezed.dart';
part 'audit_log.g.dart';

@freezed
abstract class AuditLog with _$AuditLog {
  const factory AuditLog({
    @UuidConverter() required Uuid id,
    @UuidConverter() Uuid? actorUserId,
    required String action,
    required String entityType,
    @UuidConverter() required Uuid entityId,
    @Default(<String, dynamic>{}) JsonMap dataBefore,
    @Default(<String, dynamic>{}) JsonMap dataAfter,
    String? ip,
    String? userAgent,
    @UtcDateTimeConverter() required DateTime occurredAt,
  }) = _AuditLog;

  factory AuditLog.fromJson(Map<String, dynamic> json) =>
      _$AuditLogFromJson(json);
}

@freezed
abstract class AuditLogDto with _$AuditLogDto {
  const AuditLogDto._();
  const factory AuditLogDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'actor_user_id') String? actorUserId,
    @JsonKey(name: 'action') required String action,
    @JsonKey(name: 'entity_type') required String entityType,
    @JsonKey(name: 'entity_id') required String entityId,
    @JsonKey(name: 'data_before') Map<String, dynamic>? dataBefore,
    @JsonKey(name: 'data_after') Map<String, dynamic>? dataAfter,
    @JsonKey(name: 'ip') String? ip,
    @JsonKey(name: 'user_agent') String? userAgent,
    @JsonKey(name: 'occurred_at') required String occurredAt,
  }) = _AuditLogDto;

  factory AuditLogDto.fromJson(Map<String, dynamic> json) =>
      _$AuditLogDtoFromJson(json);

  AuditLog toDomain() => AuditLog(
        id: Uuid.from(id),
        actorUserId: actorUserId == null ? null : Uuid.from(actorUserId!),
        action: action,
        entityType: entityType,
        entityId: Uuid.from(entityId),
        dataBefore: dataBefore ?? <String, dynamic>{},
        dataAfter: dataAfter ?? <String, dynamic>{},
        ip: ip,
        userAgent: userAgent,
        occurredAt: DateTime.parse(occurredAt).toUtc(),
      );

  static AuditLogDto fromDomain(AuditLog a) => AuditLogDto(
        id: a.id.asString,
        actorUserId: a.actorUserId?.asString,
        action: a.action,
        entityType: a.entityType,
        entityId: a.entityId.asString,
        dataBefore: a.dataBefore,
        dataAfter: a.dataAfter,
        ip: a.ip,
        userAgent: a.userAgent,
        occurredAt: a.occurredAt.toIso8601String(),
      );
}
