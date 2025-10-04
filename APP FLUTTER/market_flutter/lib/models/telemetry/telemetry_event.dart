import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';
import '../commons/value_objects.dart' show JsonMap;

part 'telemetry_event.freezed.dart';
part 'telemetry_event.g.dart';

@freezed
abstract class TelemetryEvent with _$TelemetryEvent {
  const factory TelemetryEvent({
    @UuidConverter() required Uuid id,
    @UtcDateTimeConverter() required DateTime eventTime,
    @UtcDateTimeConverter() required DateTime ingestTime,
    @UuidConverter() Uuid? userId,
    @UuidConverter() Uuid? sessionId,
    @UuidConverter() Uuid? deviceId,
    required String eventName,
    String? page,
    String? feature,
    @UuidConverter() Uuid? listingId,
    @UuidConverter() Uuid? chatId,
    @UuidConverter() Uuid? orderId,
    @UuidConverter() Uuid? offerId,
    @UuidConverter() Uuid? categoryId,
    int? durationMs,
    num? numericValue,
    String? strValue,
    @Default(<String, dynamic>{}) JsonMap context,
    String? geohash,
    String? appVersion,
    String? os,
    String? countryCode,
    String? campus,
  }) = _TelemetryEvent;

  factory TelemetryEvent.fromJson(Map<String, dynamic> json) =>
      _$TelemetryEventFromJson(json);
}

@freezed
abstract class TelemetryEventDto with _$TelemetryEventDto {
  const TelemetryEventDto._();
  const factory TelemetryEventDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'event_time') required String eventTime,
    @JsonKey(name: 'ingest_time') required String ingestTime,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'event_name') required String eventName,
    @JsonKey(name: 'page') String? page,
    @JsonKey(name: 'feature') String? feature,
    @JsonKey(name: 'listing_id') String? listingId,
    @JsonKey(name: 'chat_id') String? chatId,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'offer_id') String? offerId,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'duration_ms') int? durationMs,
    @JsonKey(name: 'numeric_value') num? numericValue,
    @JsonKey(name: 'str_value') String? strValue,
    @JsonKey(name: 'context') Map<String, dynamic>? context,
    @JsonKey(name: 'geohash') String? geohash,
    @JsonKey(name: 'app_version') String? appVersion,
    @JsonKey(name: 'os') String? os,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'campus') String? campus,
  }) = _TelemetryEventDto;

  factory TelemetryEventDto.fromJson(Map<String, dynamic> json) =>
      _$TelemetryEventDtoFromJson(json);

  TelemetryEvent toDomain() => TelemetryEvent(
        id: Uuid.from(id),
        eventTime: DateTime.parse(eventTime).toUtc(),
        ingestTime: DateTime.parse(ingestTime).toUtc(),
        userId: userId == null ? null : Uuid.from(userId!),
        sessionId: sessionId == null ? null : Uuid.from(sessionId!),
        deviceId: deviceId == null ? null : Uuid.from(deviceId!),
        eventName: eventName,
        page: page,
        feature: feature,
        listingId: listingId == null ? null : Uuid.from(listingId!),
        chatId: chatId == null ? null : Uuid.from(chatId!),
        orderId: orderId == null ? null : Uuid.from(orderId!),
        offerId: offerId == null ? null : Uuid.from(offerId!),
        categoryId: categoryId == null ? null : Uuid.from(categoryId!),
        durationMs: durationMs,
        numericValue: numericValue,
        strValue: strValue,
        context: context ?? <String, dynamic>{},
        geohash: geohash,
        appVersion: appVersion,
        os: os,
        countryCode: countryCode,
        campus: campus,
      );

  static TelemetryEventDto fromDomain(TelemetryEvent t) => TelemetryEventDto(
        id: t.id.asString,
        eventTime: t.eventTime.toIso8601String(),
        ingestTime: t.ingestTime.toIso8601String(),
        userId: t.userId?.asString,
        sessionId: t.sessionId?.asString,
        deviceId: t.deviceId?.asString,
        eventName: t.eventName,
        page: t.page,
        feature: t.feature,
        listingId: t.listingId?.asString,
        chatId: t.chatId?.asString,
        orderId: t.orderId?.asString,
        offerId: t.offerId?.asString,
        categoryId: t.categoryId?.asString,
        durationMs: t.durationMs,
        numericValue: t.numericValue,
        strValue: t.strValue,
        context: t.context,
        geohash: t.geohash,
        appVersion: t.appVersion,
        os: t.os,
        countryCode: t.countryCode,
        campus: t.campus,
      );
}
