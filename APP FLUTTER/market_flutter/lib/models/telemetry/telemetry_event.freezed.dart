// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelemetryEvent {

@UuidConverter() Uuid get id;@UtcDateTimeConverter() DateTime get eventTime;@UtcDateTimeConverter() DateTime get ingestTime;@UuidConverter() Uuid? get userId;@UuidConverter() Uuid? get sessionId;@UuidConverter() Uuid? get deviceId; String get eventName; String? get page; String? get feature;@UuidConverter() Uuid? get listingId;@UuidConverter() Uuid? get chatId;@UuidConverter() Uuid? get orderId;@UuidConverter() Uuid? get offerId;@UuidConverter() Uuid? get categoryId; int? get durationMs; num? get numericValue; String? get strValue; JsonMap get context; String? get geohash; String? get appVersion; String? get os; String? get countryCode; String? get campus;
/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelemetryEventCopyWith<TelemetryEvent> get copyWith => _$TelemetryEventCopyWithImpl<TelemetryEvent>(this as TelemetryEvent, _$identity);

  /// Serializes this TelemetryEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelemetryEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&(identical(other.ingestTime, ingestTime) || other.ingestTime == ingestTime)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.page, page) || other.page == page)&&(identical(other.feature, feature) || other.feature == feature)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.offerId, offerId) || other.offerId == offerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.numericValue, numericValue) || other.numericValue == numericValue)&&(identical(other.strValue, strValue) || other.strValue == strValue)&&const DeepCollectionEquality().equals(other.context, context)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.os, os) || other.os == os)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.campus, campus) || other.campus == campus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,eventTime,ingestTime,userId,sessionId,deviceId,eventName,page,feature,listingId,chatId,orderId,offerId,categoryId,durationMs,numericValue,strValue,const DeepCollectionEquality().hash(context),geohash,appVersion,os,countryCode,campus]);

@override
String toString() {
  return 'TelemetryEvent(id: $id, eventTime: $eventTime, ingestTime: $ingestTime, userId: $userId, sessionId: $sessionId, deviceId: $deviceId, eventName: $eventName, page: $page, feature: $feature, listingId: $listingId, chatId: $chatId, orderId: $orderId, offerId: $offerId, categoryId: $categoryId, durationMs: $durationMs, numericValue: $numericValue, strValue: $strValue, context: $context, geohash: $geohash, appVersion: $appVersion, os: $os, countryCode: $countryCode, campus: $campus)';
}


}

/// @nodoc
abstract mixin class $TelemetryEventCopyWith<$Res>  {
  factory $TelemetryEventCopyWith(TelemetryEvent value, $Res Function(TelemetryEvent) _then) = _$TelemetryEventCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UtcDateTimeConverter() DateTime eventTime,@UtcDateTimeConverter() DateTime ingestTime,@UuidConverter() Uuid? userId,@UuidConverter() Uuid? sessionId,@UuidConverter() Uuid? deviceId, String eventName, String? page, String? feature,@UuidConverter() Uuid? listingId,@UuidConverter() Uuid? chatId,@UuidConverter() Uuid? orderId,@UuidConverter() Uuid? offerId,@UuidConverter() Uuid? categoryId, int? durationMs, num? numericValue, String? strValue, JsonMap context, String? geohash, String? appVersion, String? os, String? countryCode, String? campus
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res>? get userId;$UuidCopyWith<$Res>? get sessionId;$UuidCopyWith<$Res>? get deviceId;$UuidCopyWith<$Res>? get listingId;$UuidCopyWith<$Res>? get chatId;$UuidCopyWith<$Res>? get orderId;$UuidCopyWith<$Res>? get offerId;$UuidCopyWith<$Res>? get categoryId;

}
/// @nodoc
class _$TelemetryEventCopyWithImpl<$Res>
    implements $TelemetryEventCopyWith<$Res> {
  _$TelemetryEventCopyWithImpl(this._self, this._then);

  final TelemetryEvent _self;
  final $Res Function(TelemetryEvent) _then;

/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventTime = null,Object? ingestTime = null,Object? userId = freezed,Object? sessionId = freezed,Object? deviceId = freezed,Object? eventName = null,Object? page = freezed,Object? feature = freezed,Object? listingId = freezed,Object? chatId = freezed,Object? orderId = freezed,Object? offerId = freezed,Object? categoryId = freezed,Object? durationMs = freezed,Object? numericValue = freezed,Object? strValue = freezed,Object? context = null,Object? geohash = freezed,Object? appVersion = freezed,Object? os = freezed,Object? countryCode = freezed,Object? campus = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,ingestTime: null == ingestTime ? _self.ingestTime : ingestTime // ignore: cast_nullable_to_non_nullable
as DateTime,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as Uuid?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as Uuid?,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,feature: freezed == feature ? _self.feature : feature // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid?,offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as Uuid?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as Uuid?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,numericValue: freezed == numericValue ? _self.numericValue : numericValue // ignore: cast_nullable_to_non_nullable
as num?,strValue: freezed == strValue ? _self.strValue : strValue // ignore: cast_nullable_to_non_nullable
as String?,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as JsonMap,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get sessionId {
    if (_self.sessionId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.sessionId!, (value) {
    return _then(_self.copyWith(sessionId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get deviceId {
    if (_self.deviceId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.deviceId!, (value) {
    return _then(_self.copyWith(deviceId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get listingId {
    if (_self.listingId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.listingId!, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get chatId {
    if (_self.chatId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.chatId!, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get orderId {
    if (_self.orderId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.orderId!, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get offerId {
    if (_self.offerId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.offerId!, (value) {
    return _then(_self.copyWith(offerId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get categoryId {
    if (_self.categoryId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.categoryId!, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}
}


/// Adds pattern-matching-related methods to [TelemetryEvent].
extension TelemetryEventPatterns on TelemetryEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelemetryEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelemetryEvent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelemetryEvent value)  $default,){
final _that = this;
switch (_that) {
case _TelemetryEvent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelemetryEvent value)?  $default,){
final _that = this;
switch (_that) {
case _TelemetryEvent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UtcDateTimeConverter()  DateTime eventTime, @UtcDateTimeConverter()  DateTime ingestTime, @UuidConverter()  Uuid? userId, @UuidConverter()  Uuid? sessionId, @UuidConverter()  Uuid? deviceId,  String eventName,  String? page,  String? feature, @UuidConverter()  Uuid? listingId, @UuidConverter()  Uuid? chatId, @UuidConverter()  Uuid? orderId, @UuidConverter()  Uuid? offerId, @UuidConverter()  Uuid? categoryId,  int? durationMs,  num? numericValue,  String? strValue,  JsonMap context,  String? geohash,  String? appVersion,  String? os,  String? countryCode,  String? campus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelemetryEvent() when $default != null:
return $default(_that.id,_that.eventTime,_that.ingestTime,_that.userId,_that.sessionId,_that.deviceId,_that.eventName,_that.page,_that.feature,_that.listingId,_that.chatId,_that.orderId,_that.offerId,_that.categoryId,_that.durationMs,_that.numericValue,_that.strValue,_that.context,_that.geohash,_that.appVersion,_that.os,_that.countryCode,_that.campus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UtcDateTimeConverter()  DateTime eventTime, @UtcDateTimeConverter()  DateTime ingestTime, @UuidConverter()  Uuid? userId, @UuidConverter()  Uuid? sessionId, @UuidConverter()  Uuid? deviceId,  String eventName,  String? page,  String? feature, @UuidConverter()  Uuid? listingId, @UuidConverter()  Uuid? chatId, @UuidConverter()  Uuid? orderId, @UuidConverter()  Uuid? offerId, @UuidConverter()  Uuid? categoryId,  int? durationMs,  num? numericValue,  String? strValue,  JsonMap context,  String? geohash,  String? appVersion,  String? os,  String? countryCode,  String? campus)  $default,) {final _that = this;
switch (_that) {
case _TelemetryEvent():
return $default(_that.id,_that.eventTime,_that.ingestTime,_that.userId,_that.sessionId,_that.deviceId,_that.eventName,_that.page,_that.feature,_that.listingId,_that.chatId,_that.orderId,_that.offerId,_that.categoryId,_that.durationMs,_that.numericValue,_that.strValue,_that.context,_that.geohash,_that.appVersion,_that.os,_that.countryCode,_that.campus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UtcDateTimeConverter()  DateTime eventTime, @UtcDateTimeConverter()  DateTime ingestTime, @UuidConverter()  Uuid? userId, @UuidConverter()  Uuid? sessionId, @UuidConverter()  Uuid? deviceId,  String eventName,  String? page,  String? feature, @UuidConverter()  Uuid? listingId, @UuidConverter()  Uuid? chatId, @UuidConverter()  Uuid? orderId, @UuidConverter()  Uuid? offerId, @UuidConverter()  Uuid? categoryId,  int? durationMs,  num? numericValue,  String? strValue,  JsonMap context,  String? geohash,  String? appVersion,  String? os,  String? countryCode,  String? campus)?  $default,) {final _that = this;
switch (_that) {
case _TelemetryEvent() when $default != null:
return $default(_that.id,_that.eventTime,_that.ingestTime,_that.userId,_that.sessionId,_that.deviceId,_that.eventName,_that.page,_that.feature,_that.listingId,_that.chatId,_that.orderId,_that.offerId,_that.categoryId,_that.durationMs,_that.numericValue,_that.strValue,_that.context,_that.geohash,_that.appVersion,_that.os,_that.countryCode,_that.campus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelemetryEvent implements TelemetryEvent {
  const _TelemetryEvent({@UuidConverter() required this.id, @UtcDateTimeConverter() required this.eventTime, @UtcDateTimeConverter() required this.ingestTime, @UuidConverter() this.userId, @UuidConverter() this.sessionId, @UuidConverter() this.deviceId, required this.eventName, this.page, this.feature, @UuidConverter() this.listingId, @UuidConverter() this.chatId, @UuidConverter() this.orderId, @UuidConverter() this.offerId, @UuidConverter() this.categoryId, this.durationMs, this.numericValue, this.strValue, final  JsonMap context = const <String, dynamic>{}, this.geohash, this.appVersion, this.os, this.countryCode, this.campus}): _context = context;
  factory _TelemetryEvent.fromJson(Map<String, dynamic> json) => _$TelemetryEventFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UtcDateTimeConverter() final  DateTime eventTime;
@override@UtcDateTimeConverter() final  DateTime ingestTime;
@override@UuidConverter() final  Uuid? userId;
@override@UuidConverter() final  Uuid? sessionId;
@override@UuidConverter() final  Uuid? deviceId;
@override final  String eventName;
@override final  String? page;
@override final  String? feature;
@override@UuidConverter() final  Uuid? listingId;
@override@UuidConverter() final  Uuid? chatId;
@override@UuidConverter() final  Uuid? orderId;
@override@UuidConverter() final  Uuid? offerId;
@override@UuidConverter() final  Uuid? categoryId;
@override final  int? durationMs;
@override final  num? numericValue;
@override final  String? strValue;
 final  JsonMap _context;
@override@JsonKey() JsonMap get context {
  if (_context is EqualUnmodifiableMapView) return _context;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_context);
}

@override final  String? geohash;
@override final  String? appVersion;
@override final  String? os;
@override final  String? countryCode;
@override final  String? campus;

/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelemetryEventCopyWith<_TelemetryEvent> get copyWith => __$TelemetryEventCopyWithImpl<_TelemetryEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelemetryEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelemetryEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&(identical(other.ingestTime, ingestTime) || other.ingestTime == ingestTime)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.page, page) || other.page == page)&&(identical(other.feature, feature) || other.feature == feature)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.offerId, offerId) || other.offerId == offerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.numericValue, numericValue) || other.numericValue == numericValue)&&(identical(other.strValue, strValue) || other.strValue == strValue)&&const DeepCollectionEquality().equals(other._context, _context)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.os, os) || other.os == os)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.campus, campus) || other.campus == campus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,eventTime,ingestTime,userId,sessionId,deviceId,eventName,page,feature,listingId,chatId,orderId,offerId,categoryId,durationMs,numericValue,strValue,const DeepCollectionEquality().hash(_context),geohash,appVersion,os,countryCode,campus]);

@override
String toString() {
  return 'TelemetryEvent(id: $id, eventTime: $eventTime, ingestTime: $ingestTime, userId: $userId, sessionId: $sessionId, deviceId: $deviceId, eventName: $eventName, page: $page, feature: $feature, listingId: $listingId, chatId: $chatId, orderId: $orderId, offerId: $offerId, categoryId: $categoryId, durationMs: $durationMs, numericValue: $numericValue, strValue: $strValue, context: $context, geohash: $geohash, appVersion: $appVersion, os: $os, countryCode: $countryCode, campus: $campus)';
}


}

/// @nodoc
abstract mixin class _$TelemetryEventCopyWith<$Res> implements $TelemetryEventCopyWith<$Res> {
  factory _$TelemetryEventCopyWith(_TelemetryEvent value, $Res Function(_TelemetryEvent) _then) = __$TelemetryEventCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UtcDateTimeConverter() DateTime eventTime,@UtcDateTimeConverter() DateTime ingestTime,@UuidConverter() Uuid? userId,@UuidConverter() Uuid? sessionId,@UuidConverter() Uuid? deviceId, String eventName, String? page, String? feature,@UuidConverter() Uuid? listingId,@UuidConverter() Uuid? chatId,@UuidConverter() Uuid? orderId,@UuidConverter() Uuid? offerId,@UuidConverter() Uuid? categoryId, int? durationMs, num? numericValue, String? strValue, JsonMap context, String? geohash, String? appVersion, String? os, String? countryCode, String? campus
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res>? get userId;@override $UuidCopyWith<$Res>? get sessionId;@override $UuidCopyWith<$Res>? get deviceId;@override $UuidCopyWith<$Res>? get listingId;@override $UuidCopyWith<$Res>? get chatId;@override $UuidCopyWith<$Res>? get orderId;@override $UuidCopyWith<$Res>? get offerId;@override $UuidCopyWith<$Res>? get categoryId;

}
/// @nodoc
class __$TelemetryEventCopyWithImpl<$Res>
    implements _$TelemetryEventCopyWith<$Res> {
  __$TelemetryEventCopyWithImpl(this._self, this._then);

  final _TelemetryEvent _self;
  final $Res Function(_TelemetryEvent) _then;

/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventTime = null,Object? ingestTime = null,Object? userId = freezed,Object? sessionId = freezed,Object? deviceId = freezed,Object? eventName = null,Object? page = freezed,Object? feature = freezed,Object? listingId = freezed,Object? chatId = freezed,Object? orderId = freezed,Object? offerId = freezed,Object? categoryId = freezed,Object? durationMs = freezed,Object? numericValue = freezed,Object? strValue = freezed,Object? context = null,Object? geohash = freezed,Object? appVersion = freezed,Object? os = freezed,Object? countryCode = freezed,Object? campus = freezed,}) {
  return _then(_TelemetryEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as DateTime,ingestTime: null == ingestTime ? _self.ingestTime : ingestTime // ignore: cast_nullable_to_non_nullable
as DateTime,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as Uuid?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as Uuid?,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,feature: freezed == feature ? _self.feature : feature // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid?,offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as Uuid?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as Uuid?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,numericValue: freezed == numericValue ? _self.numericValue : numericValue // ignore: cast_nullable_to_non_nullable
as num?,strValue: freezed == strValue ? _self.strValue : strValue // ignore: cast_nullable_to_non_nullable
as String?,context: null == context ? _self._context : context // ignore: cast_nullable_to_non_nullable
as JsonMap,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get userId {
    if (_self.userId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.userId!, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get sessionId {
    if (_self.sessionId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.sessionId!, (value) {
    return _then(_self.copyWith(sessionId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get deviceId {
    if (_self.deviceId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.deviceId!, (value) {
    return _then(_self.copyWith(deviceId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get listingId {
    if (_self.listingId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.listingId!, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get chatId {
    if (_self.chatId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.chatId!, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get orderId {
    if (_self.orderId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.orderId!, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get offerId {
    if (_self.offerId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.offerId!, (value) {
    return _then(_self.copyWith(offerId: value));
  });
}/// Create a copy of TelemetryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get categoryId {
    if (_self.categoryId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.categoryId!, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}
}


/// @nodoc
mixin _$TelemetryEventDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'event_time') String get eventTime;@JsonKey(name: 'ingest_time') String get ingestTime;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'event_name') String get eventName;@JsonKey(name: 'page') String? get page;@JsonKey(name: 'feature') String? get feature;@JsonKey(name: 'listing_id') String? get listingId;@JsonKey(name: 'chat_id') String? get chatId;@JsonKey(name: 'order_id') String? get orderId;@JsonKey(name: 'offer_id') String? get offerId;@JsonKey(name: 'category_id') String? get categoryId;@JsonKey(name: 'duration_ms') int? get durationMs;@JsonKey(name: 'numeric_value') num? get numericValue;@JsonKey(name: 'str_value') String? get strValue;@JsonKey(name: 'context') Map<String, dynamic>? get context;@JsonKey(name: 'geohash') String? get geohash;@JsonKey(name: 'app_version') String? get appVersion;@JsonKey(name: 'os') String? get os;@JsonKey(name: 'country_code') String? get countryCode;@JsonKey(name: 'campus') String? get campus;
/// Create a copy of TelemetryEventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelemetryEventDtoCopyWith<TelemetryEventDto> get copyWith => _$TelemetryEventDtoCopyWithImpl<TelemetryEventDto>(this as TelemetryEventDto, _$identity);

  /// Serializes this TelemetryEventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelemetryEventDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&(identical(other.ingestTime, ingestTime) || other.ingestTime == ingestTime)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.page, page) || other.page == page)&&(identical(other.feature, feature) || other.feature == feature)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.offerId, offerId) || other.offerId == offerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.numericValue, numericValue) || other.numericValue == numericValue)&&(identical(other.strValue, strValue) || other.strValue == strValue)&&const DeepCollectionEquality().equals(other.context, context)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.os, os) || other.os == os)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.campus, campus) || other.campus == campus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,eventTime,ingestTime,userId,sessionId,deviceId,eventName,page,feature,listingId,chatId,orderId,offerId,categoryId,durationMs,numericValue,strValue,const DeepCollectionEquality().hash(context),geohash,appVersion,os,countryCode,campus]);

@override
String toString() {
  return 'TelemetryEventDto(id: $id, eventTime: $eventTime, ingestTime: $ingestTime, userId: $userId, sessionId: $sessionId, deviceId: $deviceId, eventName: $eventName, page: $page, feature: $feature, listingId: $listingId, chatId: $chatId, orderId: $orderId, offerId: $offerId, categoryId: $categoryId, durationMs: $durationMs, numericValue: $numericValue, strValue: $strValue, context: $context, geohash: $geohash, appVersion: $appVersion, os: $os, countryCode: $countryCode, campus: $campus)';
}


}

/// @nodoc
abstract mixin class $TelemetryEventDtoCopyWith<$Res>  {
  factory $TelemetryEventDtoCopyWith(TelemetryEventDto value, $Res Function(TelemetryEventDto) _then) = _$TelemetryEventDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'event_time') String eventTime,@JsonKey(name: 'ingest_time') String ingestTime,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'event_name') String eventName,@JsonKey(name: 'page') String? page,@JsonKey(name: 'feature') String? feature,@JsonKey(name: 'listing_id') String? listingId,@JsonKey(name: 'chat_id') String? chatId,@JsonKey(name: 'order_id') String? orderId,@JsonKey(name: 'offer_id') String? offerId,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'duration_ms') int? durationMs,@JsonKey(name: 'numeric_value') num? numericValue,@JsonKey(name: 'str_value') String? strValue,@JsonKey(name: 'context') Map<String, dynamic>? context,@JsonKey(name: 'geohash') String? geohash,@JsonKey(name: 'app_version') String? appVersion,@JsonKey(name: 'os') String? os,@JsonKey(name: 'country_code') String? countryCode,@JsonKey(name: 'campus') String? campus
});




}
/// @nodoc
class _$TelemetryEventDtoCopyWithImpl<$Res>
    implements $TelemetryEventDtoCopyWith<$Res> {
  _$TelemetryEventDtoCopyWithImpl(this._self, this._then);

  final TelemetryEventDto _self;
  final $Res Function(TelemetryEventDto) _then;

/// Create a copy of TelemetryEventDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventTime = null,Object? ingestTime = null,Object? userId = freezed,Object? sessionId = freezed,Object? deviceId = freezed,Object? eventName = null,Object? page = freezed,Object? feature = freezed,Object? listingId = freezed,Object? chatId = freezed,Object? orderId = freezed,Object? offerId = freezed,Object? categoryId = freezed,Object? durationMs = freezed,Object? numericValue = freezed,Object? strValue = freezed,Object? context = freezed,Object? geohash = freezed,Object? appVersion = freezed,Object? os = freezed,Object? countryCode = freezed,Object? campus = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as String,ingestTime: null == ingestTime ? _self.ingestTime : ingestTime // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,feature: freezed == feature ? _self.feature : feature // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,numericValue: freezed == numericValue ? _self.numericValue : numericValue // ignore: cast_nullable_to_non_nullable
as num?,strValue: freezed == strValue ? _self.strValue : strValue // ignore: cast_nullable_to_non_nullable
as String?,context: freezed == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelemetryEventDto].
extension TelemetryEventDtoPatterns on TelemetryEventDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelemetryEventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelemetryEventDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelemetryEventDto value)  $default,){
final _that = this;
switch (_that) {
case _TelemetryEventDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelemetryEventDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelemetryEventDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'event_time')  String eventTime, @JsonKey(name: 'ingest_time')  String ingestTime, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'event_name')  String eventName, @JsonKey(name: 'page')  String? page, @JsonKey(name: 'feature')  String? feature, @JsonKey(name: 'listing_id')  String? listingId, @JsonKey(name: 'chat_id')  String? chatId, @JsonKey(name: 'order_id')  String? orderId, @JsonKey(name: 'offer_id')  String? offerId, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'numeric_value')  num? numericValue, @JsonKey(name: 'str_value')  String? strValue, @JsonKey(name: 'context')  Map<String, dynamic>? context, @JsonKey(name: 'geohash')  String? geohash, @JsonKey(name: 'app_version')  String? appVersion, @JsonKey(name: 'os')  String? os, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'campus')  String? campus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelemetryEventDto() when $default != null:
return $default(_that.id,_that.eventTime,_that.ingestTime,_that.userId,_that.sessionId,_that.deviceId,_that.eventName,_that.page,_that.feature,_that.listingId,_that.chatId,_that.orderId,_that.offerId,_that.categoryId,_that.durationMs,_that.numericValue,_that.strValue,_that.context,_that.geohash,_that.appVersion,_that.os,_that.countryCode,_that.campus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'event_time')  String eventTime, @JsonKey(name: 'ingest_time')  String ingestTime, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'event_name')  String eventName, @JsonKey(name: 'page')  String? page, @JsonKey(name: 'feature')  String? feature, @JsonKey(name: 'listing_id')  String? listingId, @JsonKey(name: 'chat_id')  String? chatId, @JsonKey(name: 'order_id')  String? orderId, @JsonKey(name: 'offer_id')  String? offerId, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'numeric_value')  num? numericValue, @JsonKey(name: 'str_value')  String? strValue, @JsonKey(name: 'context')  Map<String, dynamic>? context, @JsonKey(name: 'geohash')  String? geohash, @JsonKey(name: 'app_version')  String? appVersion, @JsonKey(name: 'os')  String? os, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'campus')  String? campus)  $default,) {final _that = this;
switch (_that) {
case _TelemetryEventDto():
return $default(_that.id,_that.eventTime,_that.ingestTime,_that.userId,_that.sessionId,_that.deviceId,_that.eventName,_that.page,_that.feature,_that.listingId,_that.chatId,_that.orderId,_that.offerId,_that.categoryId,_that.durationMs,_that.numericValue,_that.strValue,_that.context,_that.geohash,_that.appVersion,_that.os,_that.countryCode,_that.campus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'event_time')  String eventTime, @JsonKey(name: 'ingest_time')  String ingestTime, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'event_name')  String eventName, @JsonKey(name: 'page')  String? page, @JsonKey(name: 'feature')  String? feature, @JsonKey(name: 'listing_id')  String? listingId, @JsonKey(name: 'chat_id')  String? chatId, @JsonKey(name: 'order_id')  String? orderId, @JsonKey(name: 'offer_id')  String? offerId, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'duration_ms')  int? durationMs, @JsonKey(name: 'numeric_value')  num? numericValue, @JsonKey(name: 'str_value')  String? strValue, @JsonKey(name: 'context')  Map<String, dynamic>? context, @JsonKey(name: 'geohash')  String? geohash, @JsonKey(name: 'app_version')  String? appVersion, @JsonKey(name: 'os')  String? os, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'campus')  String? campus)?  $default,) {final _that = this;
switch (_that) {
case _TelemetryEventDto() when $default != null:
return $default(_that.id,_that.eventTime,_that.ingestTime,_that.userId,_that.sessionId,_that.deviceId,_that.eventName,_that.page,_that.feature,_that.listingId,_that.chatId,_that.orderId,_that.offerId,_that.categoryId,_that.durationMs,_that.numericValue,_that.strValue,_that.context,_that.geohash,_that.appVersion,_that.os,_that.countryCode,_that.campus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelemetryEventDto extends TelemetryEventDto {
  const _TelemetryEventDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'event_time') required this.eventTime, @JsonKey(name: 'ingest_time') required this.ingestTime, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'event_name') required this.eventName, @JsonKey(name: 'page') this.page, @JsonKey(name: 'feature') this.feature, @JsonKey(name: 'listing_id') this.listingId, @JsonKey(name: 'chat_id') this.chatId, @JsonKey(name: 'order_id') this.orderId, @JsonKey(name: 'offer_id') this.offerId, @JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'duration_ms') this.durationMs, @JsonKey(name: 'numeric_value') this.numericValue, @JsonKey(name: 'str_value') this.strValue, @JsonKey(name: 'context') final  Map<String, dynamic>? context, @JsonKey(name: 'geohash') this.geohash, @JsonKey(name: 'app_version') this.appVersion, @JsonKey(name: 'os') this.os, @JsonKey(name: 'country_code') this.countryCode, @JsonKey(name: 'campus') this.campus}): _context = context,super._();
  factory _TelemetryEventDto.fromJson(Map<String, dynamic> json) => _$TelemetryEventDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'event_time') final  String eventTime;
@override@JsonKey(name: 'ingest_time') final  String ingestTime;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'event_name') final  String eventName;
@override@JsonKey(name: 'page') final  String? page;
@override@JsonKey(name: 'feature') final  String? feature;
@override@JsonKey(name: 'listing_id') final  String? listingId;
@override@JsonKey(name: 'chat_id') final  String? chatId;
@override@JsonKey(name: 'order_id') final  String? orderId;
@override@JsonKey(name: 'offer_id') final  String? offerId;
@override@JsonKey(name: 'category_id') final  String? categoryId;
@override@JsonKey(name: 'duration_ms') final  int? durationMs;
@override@JsonKey(name: 'numeric_value') final  num? numericValue;
@override@JsonKey(name: 'str_value') final  String? strValue;
 final  Map<String, dynamic>? _context;
@override@JsonKey(name: 'context') Map<String, dynamic>? get context {
  final value = _context;
  if (value == null) return null;
  if (_context is EqualUnmodifiableMapView) return _context;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'geohash') final  String? geohash;
@override@JsonKey(name: 'app_version') final  String? appVersion;
@override@JsonKey(name: 'os') final  String? os;
@override@JsonKey(name: 'country_code') final  String? countryCode;
@override@JsonKey(name: 'campus') final  String? campus;

/// Create a copy of TelemetryEventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelemetryEventDtoCopyWith<_TelemetryEventDto> get copyWith => __$TelemetryEventDtoCopyWithImpl<_TelemetryEventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelemetryEventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelemetryEventDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventTime, eventTime) || other.eventTime == eventTime)&&(identical(other.ingestTime, ingestTime) || other.ingestTime == ingestTime)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.page, page) || other.page == page)&&(identical(other.feature, feature) || other.feature == feature)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.offerId, offerId) || other.offerId == offerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.numericValue, numericValue) || other.numericValue == numericValue)&&(identical(other.strValue, strValue) || other.strValue == strValue)&&const DeepCollectionEquality().equals(other._context, _context)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.os, os) || other.os == os)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.campus, campus) || other.campus == campus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,eventTime,ingestTime,userId,sessionId,deviceId,eventName,page,feature,listingId,chatId,orderId,offerId,categoryId,durationMs,numericValue,strValue,const DeepCollectionEquality().hash(_context),geohash,appVersion,os,countryCode,campus]);

@override
String toString() {
  return 'TelemetryEventDto(id: $id, eventTime: $eventTime, ingestTime: $ingestTime, userId: $userId, sessionId: $sessionId, deviceId: $deviceId, eventName: $eventName, page: $page, feature: $feature, listingId: $listingId, chatId: $chatId, orderId: $orderId, offerId: $offerId, categoryId: $categoryId, durationMs: $durationMs, numericValue: $numericValue, strValue: $strValue, context: $context, geohash: $geohash, appVersion: $appVersion, os: $os, countryCode: $countryCode, campus: $campus)';
}


}

/// @nodoc
abstract mixin class _$TelemetryEventDtoCopyWith<$Res> implements $TelemetryEventDtoCopyWith<$Res> {
  factory _$TelemetryEventDtoCopyWith(_TelemetryEventDto value, $Res Function(_TelemetryEventDto) _then) = __$TelemetryEventDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'event_time') String eventTime,@JsonKey(name: 'ingest_time') String ingestTime,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'event_name') String eventName,@JsonKey(name: 'page') String? page,@JsonKey(name: 'feature') String? feature,@JsonKey(name: 'listing_id') String? listingId,@JsonKey(name: 'chat_id') String? chatId,@JsonKey(name: 'order_id') String? orderId,@JsonKey(name: 'offer_id') String? offerId,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'duration_ms') int? durationMs,@JsonKey(name: 'numeric_value') num? numericValue,@JsonKey(name: 'str_value') String? strValue,@JsonKey(name: 'context') Map<String, dynamic>? context,@JsonKey(name: 'geohash') String? geohash,@JsonKey(name: 'app_version') String? appVersion,@JsonKey(name: 'os') String? os,@JsonKey(name: 'country_code') String? countryCode,@JsonKey(name: 'campus') String? campus
});




}
/// @nodoc
class __$TelemetryEventDtoCopyWithImpl<$Res>
    implements _$TelemetryEventDtoCopyWith<$Res> {
  __$TelemetryEventDtoCopyWithImpl(this._self, this._then);

  final _TelemetryEventDto _self;
  final $Res Function(_TelemetryEventDto) _then;

/// Create a copy of TelemetryEventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventTime = null,Object? ingestTime = null,Object? userId = freezed,Object? sessionId = freezed,Object? deviceId = freezed,Object? eventName = null,Object? page = freezed,Object? feature = freezed,Object? listingId = freezed,Object? chatId = freezed,Object? orderId = freezed,Object? offerId = freezed,Object? categoryId = freezed,Object? durationMs = freezed,Object? numericValue = freezed,Object? strValue = freezed,Object? context = freezed,Object? geohash = freezed,Object? appVersion = freezed,Object? os = freezed,Object? countryCode = freezed,Object? campus = freezed,}) {
  return _then(_TelemetryEventDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventTime: null == eventTime ? _self.eventTime : eventTime // ignore: cast_nullable_to_non_nullable
as String,ingestTime: null == ingestTime ? _self.ingestTime : ingestTime // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,feature: freezed == feature ? _self.feature : feature // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,numericValue: freezed == numericValue ? _self.numericValue : numericValue // ignore: cast_nullable_to_non_nullable
as num?,strValue: freezed == strValue ? _self.strValue : strValue // ignore: cast_nullable_to_non_nullable
as String?,context: freezed == context ? _self._context : context // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
