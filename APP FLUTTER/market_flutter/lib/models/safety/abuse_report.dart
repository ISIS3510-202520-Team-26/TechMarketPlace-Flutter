import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'abuse_report.freezed.dart';
part 'abuse_report.g.dart';

@freezed
abstract class AbuseReport with _$AbuseReport {
  const factory AbuseReport({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid reporterId,
    required AbuseTarget targetType,
    @UuidConverter() required Uuid targetId,
    required AbuseReason reason,
    String? description,
    required AbuseStatus status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() DateTime? resolvedAt,
  }) = _AbuseReport;

  factory AbuseReport.fromJson(Map<String, dynamic> json) =>
      _$AbuseReportFromJson(json);
}

@freezed
abstract class AbuseReportDto with _$AbuseReportDto {
  const AbuseReportDto._();
  const factory AbuseReportDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'reporter_id') required String reporterId,
    @JsonKey(name: 'target_type') required String targetType,
    @JsonKey(name: 'target_id') required String targetId,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'resolved_at') String? resolvedAt,
  }) = _AbuseReportDto;

  factory AbuseReportDto.fromJson(Map<String, dynamic> json) =>
      _$AbuseReportDtoFromJson(json);

  AbuseReport toDomain() => AbuseReport(
        id: Uuid.from(id),
        reporterId: Uuid.from(reporterId),
        targetType: AbuseTarget.values.firstWhere((e) => e.name == targetType),
        targetId: Uuid.from(targetId),
        reason: AbuseReason.values.firstWhere((e) => e.name == reason),
        description: description,
        status: AbuseStatus.values.firstWhere((e) => e.name == status),
        createdAt: DateTime.parse(createdAt).toUtc(),
        resolvedAt:
            resolvedAt == null ? null : DateTime.parse(resolvedAt!).toUtc(),
      );

  static AbuseReportDto fromDomain(AbuseReport a) => AbuseReportDto(
        id: a.id.asString,
        reporterId: a.reporterId.asString,
        targetType: a.targetType.name,
        targetId: a.targetId.asString,
        reason: a.reason.name,
        description: a.description,
        status: a.status.name,
        createdAt: a.createdAt.toIso8601String(),
        resolvedAt: a.resolvedAt?.toIso8601String(),
      );
}
