import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @UuidConverter() required Uuid userId,
    String? displayName,
    String? avatarUrl,
    String? bio,
    String? campus,
    @UuidConverter() Uuid? defaultLocationId,
    @Default(<String, dynamic>{}) Map<String, dynamic> preferences,
    @Default(0) int ratingTotal,
    @Default(0) int ratingCount,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
abstract class ProfileDto with _$ProfileDto {
  const ProfileDto._();
  const factory ProfileDto({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'campus') String? campus,
    @JsonKey(name: 'default_location_id') String? defaultLocationId,
    @JsonKey(name: 'preferences') Map<String, dynamic>? preferences,
    @JsonKey(name: 'rating_total') required int ratingTotal,
    @JsonKey(name: 'rating_count') required int ratingCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  Profile toDomain() => Profile(
        userId: Uuid.from(userId),
        displayName: displayName,
        avatarUrl: avatarUrl,
        bio: bio,
        campus: campus,
        defaultLocationId:
            defaultLocationId == null ? null : Uuid.from(defaultLocationId!),
        preferences: preferences ?? <String, dynamic>{},
        ratingTotal: ratingTotal,
        ratingCount: ratingCount,
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
      );

  static ProfileDto fromDomain(Profile p) => ProfileDto(
        userId: p.userId.asString,
        displayName: p.displayName,
        avatarUrl: p.avatarUrl,
        bio: p.bio,
        campus: p.campus,
        defaultLocationId: p.defaultLocationId?.asString,
        preferences: p.preferences,
        ratingTotal: p.ratingTotal,
        ratingCount: p.ratingCount,
        createdAt: p.createdAt.toIso8601String(),
        updatedAt: p.updatedAt.toIso8601String(),
      );
}
