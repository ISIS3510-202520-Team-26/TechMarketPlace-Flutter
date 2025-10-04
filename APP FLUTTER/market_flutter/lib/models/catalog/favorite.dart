import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
abstract class Favorite with _$Favorite {
  const factory Favorite({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid userId,
    @UuidConverter() required Uuid listingId,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
}

@freezed
abstract class FavoriteDto with _$FavoriteDto {
  const FavoriteDto._();
  const factory FavoriteDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'listing_id') required String listingId,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _FavoriteDto;

  factory FavoriteDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDtoFromJson(json);

  Favorite toDomain() => Favorite(
        id: Uuid.from(id),
        userId: Uuid.from(userId),
        listingId: Uuid.from(listingId),
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static FavoriteDto fromDomain(Favorite f) => FavoriteDto(
        id: f.id.asString,
        userId: f.userId.asString,
        listingId: f.listingId.asString,
        createdAt: f.createdAt.toIso8601String(),
      );
}
