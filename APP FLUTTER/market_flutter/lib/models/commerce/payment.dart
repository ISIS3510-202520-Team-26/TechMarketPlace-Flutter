import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/money.dart';
import '../commons/converters.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid orderId,
    required String provider,
    String? providerIntentId,
    required PaymentStatus status,
    @MoneyConverter() required Money amount,
    int? feeCents,
    @UtcDateTimeConverter() required DateTime occurredAt,
    @Default(<String, dynamic>{}) Map<String, dynamic> paymentMethod,
    required String idempotencyKey,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
abstract class PaymentDto with _$PaymentDto {
  const PaymentDto._();
  const factory PaymentDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'provider') required String provider,
    @JsonKey(name: 'provider_intent_id') String? providerIntentId,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'amount_cents') required int amountCents,
    @JsonKey(name: 'fee_cents') int? feeCents,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'payment_method') Map<String, dynamic>? paymentMethod,
    @JsonKey(name: 'idempotency_key') required String idempotencyKey,
    @JsonKey(name: 'occurred_at') required String occurredAt,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);

  Payment toDomain() => Payment(
        id: Uuid.from(id),
        orderId: Uuid.from(orderId),
        provider: provider,
        providerIntentId: providerIntentId,
        status: PaymentStatus.values.firstWhere((e) => e.name == status),
        amount:
            Money(amountCents: amountCents, currency: CurrencyCode.from(currency)),
        feeCents: feeCents,
        paymentMethod: paymentMethod ?? <String, dynamic>{},
        idempotencyKey: idempotencyKey,
        occurredAt: DateTime.parse(occurredAt).toUtc(),
      );

  static PaymentDto fromDomain(Payment p) => PaymentDto(
        id: p.id.asString,
        orderId: p.orderId.asString,
        provider: p.provider,
        providerIntentId: p.providerIntentId,
        status: p.status.name,
        amountCents: p.amount.amountCents,
        feeCents: p.feeCents,
        currency: p.amount.currency.asString,
        paymentMethod: p.paymentMethod,
        idempotencyKey: p.idempotencyKey,
        occurredAt: p.occurredAt.toIso8601String(),
      );
}
