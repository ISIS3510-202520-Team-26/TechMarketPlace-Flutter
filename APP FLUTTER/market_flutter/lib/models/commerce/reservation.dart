import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
abstract class ListingReservation with _$ListingReservation {
  const factory ListingReservation({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid listingId,
    @UuidConverter() required Uuid buyerId,
    required ReservationStatus status,
    @UtcDateTimeConverter() required DateTime expiresAt,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _ListingReservation;

  factory ListingReservation.fromJson(Map<String, dynamic> json) =>
      _$ListingReservationFromJson(json);
}

@freezed
abstract class ListingReservationDto with _$ListingReservationDto {
  const ListingReservationDto._();
  const factory ListingReservationDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'listing_id') required String listingId,
    @JsonKey(name: 'buyer_id') required String buyerId,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'expires_at') required String expiresAt,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ListingReservationDto;

  factory ListingReservationDto.fromJson(Map<String, dynamic> json) =>
      _$ListingReservationDtoFromJson(json);

  ListingReservation toDomain() => ListingReservation(
        id: Uuid.from(id),
        listingId: Uuid.from(listingId),
        buyerId: Uuid.from(buyerId),
        status: ReservationStatus.values.firstWhere((e) => e.name == status),
        expiresAt: DateTime.parse(expiresAt).toUtc(),
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static ListingReservationDto fromDomain(ListingReservation r) =>
      ListingReservationDto(
        id: r.id.asString,
        listingId: r.listingId.asString,
        buyerId: r.buyerId.asString,
        status: r.status.name,
        expiresAt: r.expiresAt.toIso8601String(),
        createdAt: r.createdAt.toIso8601String(),
      );
}
