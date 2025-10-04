import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/money.dart';
import '../commons/converters.dart';

part 'listing.freezed.dart';
part 'listing.g.dart';

@freezed
abstract class Listing with _$Listing {
  const factory Listing({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid sellerId,
    @UuidConverter() required Uuid categoryId,
    @UuidConverter() Uuid? brandId,
    @UuidConverter() Uuid? locationId,
    required String title,
    String? description,
    @MoneyConverter() required Money price,
    required ListingCondition condition,
    @Default(1) int quantity,
    @Default(0) int mediaCount,
    @Default(<String, dynamic>{}) JsonMap attributes,
    @Default(<JsonMap>[]) List<JsonMap> shippingOptions,
    required ListingStatus status,
    required ListingVisibility visibility,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
    @UtcDateTimeConverter() DateTime? deletedAt,
  }) = _Listing;

  factory Listing.fromJson(Map<String, dynamic> json) =>
      _$ListingFromJson(json);
}

@freezed
abstract class ListingDto with _$ListingDto {
  const ListingDto._();
  const factory ListingDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'seller_id') required String sellerId,
    @JsonKey(name: 'category_id') required String categoryId,
    @JsonKey(name: 'brand_id') String? brandId,
    @JsonKey(name: 'location_id') String? locationId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price_cents') required int priceCents,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'condition') required String condition,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'media_count') required int mediaCount,
    @JsonKey(name: 'attributes') Map<String, dynamic>? attributes,
    @JsonKey(name: 'shipping_options') List<dynamic>? shippingOptions,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'visibility') required String visibility,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
  }) = _ListingDto;

  factory ListingDto.fromJson(Map<String, dynamic> json) =>
      _$ListingDtoFromJson(json);

  Listing toDomain() => Listing(
        id: Uuid.from(id),
        sellerId: Uuid.from(sellerId),
        categoryId: Uuid.from(categoryId),
        brandId: brandId == null ? null : Uuid.from(brandId!),
        locationId: locationId == null ? null : Uuid.from(locationId!),
        title: title,
        description: description,
        price: Money(
          amountCents: priceCents,
          currency: CurrencyCode.from(currency),
        ),
        condition: ListingCondition.values.firstWhere(
          (e) => e.name == (condition == 'new' ? 'new_' : condition),
        ),
        quantity: quantity,
        mediaCount: mediaCount,
        attributes: (attributes ?? const <String, dynamic>{})
            .cast<String, dynamic>(),
        shippingOptions:
            (shippingOptions ?? const <Map<String, dynamic>>[])
                .cast<Map<String, dynamic>>(),
        status: ListingStatus.values.firstWhere((e) => e.name == status),
        visibility: visibility == 'private'
            ? ListingVisibility.private_
            : ListingVisibility.public_,
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
        deletedAt:
            deletedAt == null ? null : DateTime.parse(deletedAt!).toUtc(),
      );

  static ListingDto fromDomain(Listing l) => ListingDto(
        id: l.id.asString,
        sellerId: l.sellerId.asString,
        categoryId: l.categoryId.asString,
        brandId: l.brandId?.asString,
        locationId: l.locationId?.asString,
        title: l.title,
        description: l.description,
        priceCents: l.price.amountCents,
        currency: l.price.currency.asString,
        condition:
            l.condition == ListingCondition.new_ ? 'new' : l.condition.name,
        quantity: l.quantity,
        mediaCount: l.mediaCount,
        attributes: l.attributes,
        shippingOptions: l.shippingOptions,
        status: l.status.name,
        visibility:
            l.visibility == ListingVisibility.private_ ? 'private' : 'public',
        createdAt: l.createdAt.toIso8601String(),
        updatedAt: l.updatedAt.toIso8601String(),
        deletedAt: l.deletedAt?.toIso8601String(),
      );
}
