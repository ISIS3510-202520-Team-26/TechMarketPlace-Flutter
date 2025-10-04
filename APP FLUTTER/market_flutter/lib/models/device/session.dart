import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
abstract class Session with _$Session {
  const factory Session({
    @UuidConverter() required Uuid id,
    @UuidConverter() Uuid? userId,
    @UuidConverter() Uuid? deviceId,
    String? appVersion,
    String? osVersion,
    String? locale,
    String? timezone,
    @UtcDateTimeConverter() required DateTime startedAt,
    @UtcDateTimeConverter() required DateTime lastActivityAt,
    @UtcDateTimeConverter() DateTime? endedAt,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
abstract class SessionDto with _$SessionDto {
  const SessionDto._();
  const factory SessionDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'app_version') String? appVersion,
    @JsonKey(name: 'os_version') String? osVersion,
    @JsonKey(name: 'locale') String? locale,
    @JsonKey(name: 'timezone') String? timezone,
    @JsonKey(name: 'started_at') required String startedAt,
    @JsonKey(name: 'last_activity_at') required String lastActivityAt,
    @JsonKey(name: 'ended_at') String? endedAt,
  }) = _SessionDto;

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);

  Session toDomain() => Session(
        id: Uuid.from(id),
        userId: userId == null ? null : Uuid.from(userId!),
        deviceId: deviceId == null ? null : Uuid.from(deviceId!),
        appVersion: appVersion,
        osVersion: osVersion,
        locale: locale,
        timezone: timezone,
        startedAt: DateTime.parse(startedAt).toUtc(),
        lastActivityAt: DateTime.parse(lastActivityAt).toUtc(),
        endedAt: endedAt == null ? null : DateTime.parse(endedAt!).toUtc(),
      );

  static SessionDto fromDomain(Session s) => SessionDto(
        id: s.id.asString,
        userId: s.userId?.asString,
        deviceId: s.deviceId?.asString,
        appVersion: s.appVersion,
        osVersion: s.osVersion,
        locale: s.locale,
        timezone: s.timezone,
        startedAt: s.startedAt.toIso8601String(),
        lastActivityAt: s.lastActivityAt.toIso8601String(),
        endedAt: s.endedAt?.toIso8601String(),
      );
}
