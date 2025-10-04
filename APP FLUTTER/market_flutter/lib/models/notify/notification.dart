import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';
import '../commons/value_objects.dart' show JsonMap;

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid userId,
    required String type,
    required String title,
    String? body,
    @Default(<String, dynamic>{}) JsonMap data,
    required NotificationVia sentVia,
    required NotificationStatus status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() DateTime? readAt,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}

@freezed
abstract class AppNotificationDto with _$AppNotificationDto {
  const AppNotificationDto._();
  const factory AppNotificationDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'data') Map<String, dynamic>? data,
    @JsonKey(name: 'sent_via') required String sentVia,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'read_at') String? readAt,
  }) = _AppNotificationDto;

  factory AppNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationDtoFromJson(json);

  AppNotification toDomain() => AppNotification(
        id: Uuid.from(id),
        userId: Uuid.from(userId),
        type: type,
        title: title,
        body: body,
        data: data ?? <String, dynamic>{},
        sentVia: NotificationVia.values.firstWhere((e) => e.name == sentVia),
        status: NotificationStatus.values.firstWhere((e) => e.name == status),
        createdAt: DateTime.parse(createdAt).toUtc(),
        readAt: readAt == null ? null : DateTime.parse(readAt!).toUtc(),
      );

  static AppNotificationDto fromDomain(AppNotification n) =>
      AppNotificationDto(
        id: n.id.asString,
        userId: n.userId.asString,
        type: n.type,
        title: n.title,
        body: n.body,
        data: n.data,
        sentVia: n.sentVia.name,
        status: n.status.name,
        createdAt: n.createdAt.toIso8601String(),
        readAt: n.readAt?.toIso8601String(),
      );
}
