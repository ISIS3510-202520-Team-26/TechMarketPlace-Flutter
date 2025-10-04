import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'listing_photo.freezed.dart';
part 'listing_photo.g.dart';

@freezed
abstract class ListingPhoto with _$ListingPhoto {
  const factory ListingPhoto({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid listingId,
    required String url,
    String? altText,
    @Default(0) int position,
    @Default(false) bool isPrimary,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _ListingPhoto;

  factory ListingPhoto.fromJson(Map<String, dynamic> json) =>
      _$ListingPhotoFromJson(json);
}

@freezed
abstract class ListingPhotoDto with _$ListingPhotoDto {
  const ListingPhotoDto._();
  const factory ListingPhotoDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'listing_id') required String listingId,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'alt_text') String? altText,
    @JsonKey(name: 'position') required int position,
    @JsonKey(name: 'is_primary') required bool isPrimary,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ListingPhotoDto;

  factory ListingPhotoDto.fromJson(Map<String, dynamic> json) =>
      _$ListingPhotoDtoFromJson(json);

  ListingPhoto toDomain() => ListingPhoto(
        id: Uuid.from(id),
        listingId: Uuid.from(listingId),
        url: url,
        altText: altText,
        position: position,
        isPrimary: isPrimary,
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static ListingPhotoDto fromDomain(ListingPhoto p) => ListingPhotoDto(
        id: p.id.asString,
        listingId: p.listingId.asString,
        url: p.url,
        altText: p.altText,
        position: p.position,
        isPrimary: p.isPrimary,
        createdAt: p.createdAt.toIso8601String(),
      );
}
