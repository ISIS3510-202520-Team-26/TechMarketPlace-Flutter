import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'dispute.freezed.dart';
part 'dispute.g.dart';

@freezed
abstract class Dispute with _$Dispute {
  const factory Dispute({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid orderId,
    required DisputeActor openedBy,
    required DisputeReason reason,
    String? description,
    required DisputeStatus status,
    String? resolutionNotes,
    @UtcDateTimeConverter() required DateTime openedAt,
    @UtcDateTimeConverter() DateTime? closedAt,
  }) = _Dispute;

  factory Dispute.fromJson(Map<String, dynamic> json) =>
      _$DisputeFromJson(json);
}

@freezed
abstract class DisputeDto with _$DisputeDto {
  const DisputeDto._();
  const factory DisputeDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'opened_by') required String openedBy,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    @JsonKey(name: 'opened_at') required String openedAt,
    @JsonKey(name: 'closed_at') String? closedAt,
  }) = _DisputeDto;

  factory DisputeDto.fromJson(Map<String, dynamic> json) =>
      _$DisputeDtoFromJson(json);

  Dispute toDomain() => Dispute(
        id: Uuid.from(id),
        orderId: Uuid.from(orderId),
        openedBy: DisputeActor.values.firstWhere((e) => e.name == openedBy),
        reason: DisputeReason.values.firstWhere((e) => e.name == reason),
        description: description,
        status: DisputeStatus.values.firstWhere((e) => e.name == status),
        resolutionNotes: resolutionNotes,
        openedAt: DateTime.parse(openedAt).toUtc(),
        closedAt: closedAt == null ? null : DateTime.parse(closedAt!).toUtc(),
      );

  static DisputeDto fromDomain(Dispute d) => DisputeDto(
        id: d.id.asString,
        orderId: d.orderId.asString,
        openedBy: d.openedBy.name,
        reason: d.reason.name,
        description: d.description,
        status: d.status.name,
        resolutionNotes: d.resolutionNotes,
        openedAt: d.openedAt.toIso8601String(),
        closedAt: d.closedAt?.toIso8601String(),
      );
}
