import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/money.dart';
import '../commons/converters.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid listingId,
    @UuidConverter() required Uuid sellerId,
    @UuidConverter() required Uuid buyerId,
    @UuidConverter() Uuid? offerId,
    @MoneyConverter() required Money price,
    @Default(1) int quantity,
    required OrderStatus status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
abstract class OrderDto with _$OrderDto {
  const OrderDto._();
  const factory OrderDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'listing_id') required String listingId,
    @JsonKey(name: 'seller_id') required String sellerId,
    @JsonKey(name: 'buyer_id') required String buyerId,
    @JsonKey(name: 'offer_id') String? offerId,
    @JsonKey(name: 'price_cents') required int priceCents,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  Order toDomain() => Order(
        id: Uuid.from(id),
        listingId: Uuid.from(listingId),
        sellerId: Uuid.from(sellerId),
        buyerId: Uuid.from(buyerId),
        offerId: offerId == null ? null : Uuid.from(offerId!),
        price: Money(amountCents: priceCents, currency: CurrencyCode.from(currency)),
        quantity: quantity,
        status: OrderStatus.values.firstWhere((e) => e.name == status),
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
      );

  static OrderDto fromDomain(Order o) => OrderDto(
        id: o.id.asString,
        listingId: o.listingId.asString,
        sellerId: o.sellerId.asString,
        buyerId: o.buyerId.asString,
        offerId: o.offerId?.asString,
        priceCents: o.price.amountCents,
        currency: o.price.currency.asString,
        quantity: o.quantity,
        status: o.status.name,
        createdAt: o.createdAt.toIso8601String(),
        updatedAt: o.updatedAt.toIso8601String(),
      );
}
