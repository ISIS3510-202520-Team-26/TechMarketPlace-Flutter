import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class AppLocation with _$AppLocation {
  const factory AppLocation({
    @UuidConverter() required Uuid id,
    @UuidConverter() Uuid? userId,
    String? label,
    required double lat,
    required double lon,
    String? geohash,
    String? addressText,
    String? city,
    String? state,
    String? countryCode,
    String? postalCode,
    @Default(false) bool isDefault,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _AppLocation;

  factory AppLocation.fromJson(Map<String, dynamic> json) =>
      _$AppLocationFromJson(json);
}

@freezed
abstract class AppLocationDto with _$AppLocationDto {
  const AppLocationDto._();
  const factory AppLocationDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'lat') required num lat,
    @JsonKey(name: 'lon') required num lon,
    @JsonKey(name: 'geohash') String? geohash,
    @JsonKey(name: 'address_text') String? addressText,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _AppLocationDto;

  factory AppLocationDto.fromJson(Map<String, dynamic> json) =>
      _$AppLocationDtoFromJson(json);

  AppLocation toDomain() => AppLocation(
        id: Uuid.from(id),
        userId: userId == null ? null : Uuid.from(userId!),
        label: label,
        lat: lat.toDouble(),
        lon: lon.toDouble(),
        geohash: geohash,
        addressText: addressText,
        city: city,
        state: state,
        countryCode: countryCode,
        postalCode: postalCode,
        isDefault: isDefault,
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static AppLocationDto fromDomain(AppLocation l) => AppLocationDto(
        id: l.id.asString,
        userId: l.userId?.asString,
        label: l.label,
        lat: l.lat,
        lon: l.lon,
        geohash: l.geohash,
        addressText: l.addressText,
        city: l.city,
        state: l.state,
        countryCode: l.countryCode,
        postalCode: l.postalCode,
        isDefault: l.isDefault,
        createdAt: l.createdAt.toIso8601String(),
      );
}
