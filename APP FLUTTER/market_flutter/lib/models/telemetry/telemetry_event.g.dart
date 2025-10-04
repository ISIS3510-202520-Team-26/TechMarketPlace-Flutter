// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelemetryEvent _$TelemetryEventFromJson(Map<String, dynamic> json) =>
    _TelemetryEvent(
      id: const UuidConverter().fromJson(json['id'] as String),
      eventTime: const UtcDateTimeConverter().fromJson(
        json['eventTime'] as String,
      ),
      ingestTime: const UtcDateTimeConverter().fromJson(
        json['ingestTime'] as String,
      ),
      userId: _$JsonConverterFromJson<String, Uuid>(
        json['userId'],
        const UuidConverter().fromJson,
      ),
      sessionId: _$JsonConverterFromJson<String, Uuid>(
        json['sessionId'],
        const UuidConverter().fromJson,
      ),
      deviceId: _$JsonConverterFromJson<String, Uuid>(
        json['deviceId'],
        const UuidConverter().fromJson,
      ),
      eventName: json['eventName'] as String,
      page: json['page'] as String?,
      feature: json['feature'] as String?,
      listingId: _$JsonConverterFromJson<String, Uuid>(
        json['listingId'],
        const UuidConverter().fromJson,
      ),
      chatId: _$JsonConverterFromJson<String, Uuid>(
        json['chatId'],
        const UuidConverter().fromJson,
      ),
      orderId: _$JsonConverterFromJson<String, Uuid>(
        json['orderId'],
        const UuidConverter().fromJson,
      ),
      offerId: _$JsonConverterFromJson<String, Uuid>(
        json['offerId'],
        const UuidConverter().fromJson,
      ),
      categoryId: _$JsonConverterFromJson<String, Uuid>(
        json['categoryId'],
        const UuidConverter().fromJson,
      ),
      durationMs: (json['durationMs'] as num?)?.toInt(),
      numericValue: json['numericValue'] as num?,
      strValue: json['strValue'] as String?,
      context:
          json['context'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      geohash: json['geohash'] as String?,
      appVersion: json['appVersion'] as String?,
      os: json['os'] as String?,
      countryCode: json['countryCode'] as String?,
      campus: json['campus'] as String?,
    );

Map<String, dynamic> _$TelemetryEventToJson(_TelemetryEvent instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'eventTime': const UtcDateTimeConverter().toJson(instance.eventTime),
      'ingestTime': const UtcDateTimeConverter().toJson(instance.ingestTime),
      'userId': _$JsonConverterToJson<String, Uuid>(
        instance.userId,
        const UuidConverter().toJson,
      ),
      'sessionId': _$JsonConverterToJson<String, Uuid>(
        instance.sessionId,
        const UuidConverter().toJson,
      ),
      'deviceId': _$JsonConverterToJson<String, Uuid>(
        instance.deviceId,
        const UuidConverter().toJson,
      ),
      'eventName': instance.eventName,
      'page': instance.page,
      'feature': instance.feature,
      'listingId': _$JsonConverterToJson<String, Uuid>(
        instance.listingId,
        const UuidConverter().toJson,
      ),
      'chatId': _$JsonConverterToJson<String, Uuid>(
        instance.chatId,
        const UuidConverter().toJson,
      ),
      'orderId': _$JsonConverterToJson<String, Uuid>(
        instance.orderId,
        const UuidConverter().toJson,
      ),
      'offerId': _$JsonConverterToJson<String, Uuid>(
        instance.offerId,
        const UuidConverter().toJson,
      ),
      'categoryId': _$JsonConverterToJson<String, Uuid>(
        instance.categoryId,
        const UuidConverter().toJson,
      ),
      'durationMs': instance.durationMs,
      'numericValue': instance.numericValue,
      'strValue': instance.strValue,
      'context': instance.context,
      'geohash': instance.geohash,
      'appVersion': instance.appVersion,
      'os': instance.os,
      'countryCode': instance.countryCode,
      'campus': instance.campus,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_TelemetryEventDto _$TelemetryEventDtoFromJson(Map<String, dynamic> json) =>
    _TelemetryEventDto(
      id: json['id'] as String,
      eventTime: json['event_time'] as String,
      ingestTime: json['ingest_time'] as String,
      userId: json['user_id'] as String?,
      sessionId: json['session_id'] as String?,
      deviceId: json['device_id'] as String?,
      eventName: json['event_name'] as String,
      page: json['page'] as String?,
      feature: json['feature'] as String?,
      listingId: json['listing_id'] as String?,
      chatId: json['chat_id'] as String?,
      orderId: json['order_id'] as String?,
      offerId: json['offer_id'] as String?,
      categoryId: json['category_id'] as String?,
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      numericValue: json['numeric_value'] as num?,
      strValue: json['str_value'] as String?,
      context: json['context'] as Map<String, dynamic>?,
      geohash: json['geohash'] as String?,
      appVersion: json['app_version'] as String?,
      os: json['os'] as String?,
      countryCode: json['country_code'] as String?,
      campus: json['campus'] as String?,
    );

Map<String, dynamic> _$TelemetryEventDtoToJson(_TelemetryEventDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_time': instance.eventTime,
      'ingest_time': instance.ingestTime,
      'user_id': instance.userId,
      'session_id': instance.sessionId,
      'device_id': instance.deviceId,
      'event_name': instance.eventName,
      'page': instance.page,
      'feature': instance.feature,
      'listing_id': instance.listingId,
      'chat_id': instance.chatId,
      'order_id': instance.orderId,
      'offer_id': instance.offerId,
      'category_id': instance.categoryId,
      'duration_ms': instance.durationMs,
      'numeric_value': instance.numericValue,
      'str_value': instance.strValue,
      'context': instance.context,
      'geohash': instance.geohash,
      'app_version': instance.appVersion,
      'os': instance.os,
      'country_code': instance.countryCode,
      'campus': instance.campus,
    };
