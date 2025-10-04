import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/money.dart';
import '../commons/converters.dart';

part 'escrow.freezed.dart';
part 'escrow.g.dart';

@freezed
abstract class Escrow with _$Escrow {
  const factory Escrow({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid orderId,
    required EscrowStatus status,
    @MoneyConverter() required Money heldAmount,
    required String provider,
    @UtcDateTimeConverter() required DateTime openedAt,
    @UtcDateTimeConverter() DateTime? releasedAt,
    @UtcDateTimeConverter() DateTime? refundedAt,
  }) = _Escrow;

  factory Escrow.fromJson(Map<String, dynamic> json) => _$EscrowFromJson(json);
}

@freezed
abstract class EscrowDto with _$EscrowDto {
  const EscrowDto._();
  const factory EscrowDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'held_amount_cents') required int heldAmountCents,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'provider') required String provider,
    @JsonKey(name: 'opened_at') required String openedAt,
    @JsonKey(name: 'released_at') String? releasedAt,
    @JsonKey(name: 'refunded_at') String? refundedAt,
  }) = _EscrowDto;

  factory EscrowDto.fromJson(Map<String, dynamic> json) =>
      _$EscrowDtoFromJson(json);

  Escrow toDomain() => Escrow(
        id: Uuid.from(id),
        orderId: Uuid.from(orderId),
        status: EscrowStatus.values.firstWhere((e) => e.name == status),
        heldAmount: Money(
          amountCents: heldAmountCents,
          currency: CurrencyCode.from(currency),
        ),
        provider: provider,
        openedAt: DateTime.parse(openedAt).toUtc(),
        releasedAt: releasedAt == null ? null : DateTime.parse(releasedAt!).toUtc(),
        refundedAt: refundedAt == null ? null : DateTime.parse(refundedAt!).toUtc(),
      );

  static EscrowDto fromDomain(Escrow e) => EscrowDto(
        id: e.id.asString,
        orderId: e.orderId.asString,
        status: e.status.name,
        heldAmountCents: e.heldAmount.amountCents,
        currency: e.heldAmount.currency.asString,
        provider: e.provider,
        openedAt: e.openedAt.toIso8601String(),
        releasedAt: e.releasedAt?.toIso8601String(),
        refundedAt: e.refundedAt?.toIso8601String(),
      );
}
