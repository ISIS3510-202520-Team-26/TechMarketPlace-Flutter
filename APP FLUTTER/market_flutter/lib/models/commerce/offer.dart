import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/money.dart';
import '../commons/converters.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
abstract class Offer with _$Offer {
  const factory Offer({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid listingId,
    @UuidConverter() required Uuid buyerId,
    @UuidConverter() Uuid? chatId,
    @MoneyConverter() required Money amount,
    @Default(OfferStatus.proposed) OfferStatus status,
    @UuidConverter() Uuid? counterOf,
    @UtcDateTimeConverter() DateTime? expiresAt,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

@freezed
abstract class OfferDto with _$OfferDto {
  const OfferDto._();
  const factory OfferDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'listing_id') required String listingId,
    @JsonKey(name: 'buyer_id') required String buyerId,
    @JsonKey(name: 'chat_id') String? chatId,
    @JsonKey(name: 'amount_cents') required int amountCents,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'counter_of') String? counterOf,
    @JsonKey(name: 'expires_at') String? expiresAt,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _OfferDto;

  factory OfferDto.fromJson(Map<String, dynamic> json) =>
      _$OfferDtoFromJson(json);

  Offer toDomain() => Offer(
        id: Uuid.from(id),
        listingId: Uuid.from(listingId),
        buyerId: Uuid.from(buyerId),
        chatId: chatId == null ? null : Uuid.from(chatId!),
        amount: Money(
          amountCents: amountCents,
          currency: CurrencyCode.from(currency),
        ),
        status: OfferStatus.values
            .firstWhere((e) => e.name == status, orElse: () => OfferStatus.proposed),
        counterOf: counterOf == null ? null : Uuid.from(counterOf!),
        expiresAt: expiresAt == null ? null : DateTime.parse(expiresAt!).toUtc(),
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static OfferDto fromDomain(Offer o) => OfferDto(
        id: o.id.asString,
        listingId: o.listingId.asString,
        buyerId: o.buyerId.asString,
        chatId: o.chatId?.asString,
        amountCents: o.amount.amountCents,
        currency: o.amount.currency.asString,
        status: o.status.name,
        counterOf: o.counterOf?.asString,
        expiresAt: o.expiresAt?.toIso8601String(),
        createdAt: o.createdAt.toIso8601String(),
      );
}
