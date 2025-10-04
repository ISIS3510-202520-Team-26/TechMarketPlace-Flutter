// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Session {

@UuidConverter() Uuid get id;@UuidConverter() Uuid? get userId;@UuidConverter() Uuid? get deviceId; String? get appVersion; String? get osVersion; String? get locale; String? get timezone;@UtcDateTimeConverter() DateTime get startedAt;@UtcDateTimeConverter() DateTime get lastActivityAt;@UtcDateTimeConverter() DateTime? get endedAt;
/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionCopyWith<Session> get copyWith => _$SessionCopyWithImpl<Session>(this as Session, _$identity);

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Session&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,deviceId,appVersion,osVersion,locale,timezone,startedAt,lastActivityAt,endedAt);

@override
String toString() {
  return 'Session(id: $id, userId: $userId, deviceId: $deviceId, appVersion: $appVersion, osVersion: $osVersion, locale: $locale, timezone: $timezone, startedAt: $startedAt, lastActivityAt: $lastActivityAt, endedAt: $endedAt)';
}


}

/// @nodoc
abstract mixin class $SessionCopyWith<$Res>  {
  factory $SessionCopyWith(Session value, $Res Function(Session) _then) = _$SessionCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? userId,@UuidConverter() Uuid? deviceId, String? appVersion, String? osVersion, String? locale, String? timezone,@UtcDateTimeConverter() DateTime startedAt,@UtcDateTimeConverter() DateTime lastActivityAt,@UtcDateTimeConverter() DateTime? endedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res>? get userId;$UuidCopyWith<$Res>? get deviceId;

}
/// @nodoc
class _$SessionCopyWithImpl<$Res>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._self, this._then);

  final Session _self;
  final $Res Function(Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? deviceId = freezed,Object? appVersion = freezed,Object? osVersion = freezed,Object? locale = freezed,Object? timezone = freezed,Object? startedAt = null,Object? lastActivityAt = null,Object? endedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as Uuid?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastActivityAt: null == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Session
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
}/// Create a copy of Session
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
}
}


/// Adds pattern-matching-related methods to [Session].
extension SessionPatterns on Session {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Session value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Session value)  $default,){
final _that = this;
switch (_that) {
case _Session():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Session value)?  $default,){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId, @UuidConverter()  Uuid? deviceId,  String? appVersion,  String? osVersion,  String? locale,  String? timezone, @UtcDateTimeConverter()  DateTime startedAt, @UtcDateTimeConverter()  DateTime lastActivityAt, @UtcDateTimeConverter()  DateTime? endedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.id,_that.userId,_that.deviceId,_that.appVersion,_that.osVersion,_that.locale,_that.timezone,_that.startedAt,_that.lastActivityAt,_that.endedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId, @UuidConverter()  Uuid? deviceId,  String? appVersion,  String? osVersion,  String? locale,  String? timezone, @UtcDateTimeConverter()  DateTime startedAt, @UtcDateTimeConverter()  DateTime lastActivityAt, @UtcDateTimeConverter()  DateTime? endedAt)  $default,) {final _that = this;
switch (_that) {
case _Session():
return $default(_that.id,_that.userId,_that.deviceId,_that.appVersion,_that.osVersion,_that.locale,_that.timezone,_that.startedAt,_that.lastActivityAt,_that.endedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId, @UuidConverter()  Uuid? deviceId,  String? appVersion,  String? osVersion,  String? locale,  String? timezone, @UtcDateTimeConverter()  DateTime startedAt, @UtcDateTimeConverter()  DateTime lastActivityAt, @UtcDateTimeConverter()  DateTime? endedAt)?  $default,) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.id,_that.userId,_that.deviceId,_that.appVersion,_that.osVersion,_that.locale,_that.timezone,_that.startedAt,_that.lastActivityAt,_that.endedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Session implements Session {
  const _Session({@UuidConverter() required this.id, @UuidConverter() this.userId, @UuidConverter() this.deviceId, this.appVersion, this.osVersion, this.locale, this.timezone, @UtcDateTimeConverter() required this.startedAt, @UtcDateTimeConverter() required this.lastActivityAt, @UtcDateTimeConverter() this.endedAt});
  factory _Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid? userId;
@override@UuidConverter() final  Uuid? deviceId;
@override final  String? appVersion;
@override final  String? osVersion;
@override final  String? locale;
@override final  String? timezone;
@override@UtcDateTimeConverter() final  DateTime startedAt;
@override@UtcDateTimeConverter() final  DateTime lastActivityAt;
@override@UtcDateTimeConverter() final  DateTime? endedAt;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionCopyWith<_Session> get copyWith => __$SessionCopyWithImpl<_Session>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Session&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,deviceId,appVersion,osVersion,locale,timezone,startedAt,lastActivityAt,endedAt);

@override
String toString() {
  return 'Session(id: $id, userId: $userId, deviceId: $deviceId, appVersion: $appVersion, osVersion: $osVersion, locale: $locale, timezone: $timezone, startedAt: $startedAt, lastActivityAt: $lastActivityAt, endedAt: $endedAt)';
}


}

/// @nodoc
abstract mixin class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) _then) = __$SessionCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? userId,@UuidConverter() Uuid? deviceId, String? appVersion, String? osVersion, String? locale, String? timezone,@UtcDateTimeConverter() DateTime startedAt,@UtcDateTimeConverter() DateTime lastActivityAt,@UtcDateTimeConverter() DateTime? endedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res>? get userId;@override $UuidCopyWith<$Res>? get deviceId;

}
/// @nodoc
class __$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(this._self, this._then);

  final _Session _self;
  final $Res Function(_Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? deviceId = freezed,Object? appVersion = freezed,Object? osVersion = freezed,Object? locale = freezed,Object? timezone = freezed,Object? startedAt = null,Object? lastActivityAt = null,Object? endedAt = freezed,}) {
  return _then(_Session(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as Uuid?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastActivityAt: null == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Session
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
}/// Create a copy of Session
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
}
}


/// @nodoc
mixin _$SessionDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'app_version') String? get appVersion;@JsonKey(name: 'os_version') String? get osVersion;@JsonKey(name: 'locale') String? get locale;@JsonKey(name: 'timezone') String? get timezone;@JsonKey(name: 'started_at') String get startedAt;@JsonKey(name: 'last_activity_at') String get lastActivityAt;@JsonKey(name: 'ended_at') String? get endedAt;
/// Create a copy of SessionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionDtoCopyWith<SessionDto> get copyWith => _$SessionDtoCopyWithImpl<SessionDto>(this as SessionDto, _$identity);

  /// Serializes this SessionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,deviceId,appVersion,osVersion,locale,timezone,startedAt,lastActivityAt,endedAt);

@override
String toString() {
  return 'SessionDto(id: $id, userId: $userId, deviceId: $deviceId, appVersion: $appVersion, osVersion: $osVersion, locale: $locale, timezone: $timezone, startedAt: $startedAt, lastActivityAt: $lastActivityAt, endedAt: $endedAt)';
}


}

/// @nodoc
abstract mixin class $SessionDtoCopyWith<$Res>  {
  factory $SessionDtoCopyWith(SessionDto value, $Res Function(SessionDto) _then) = _$SessionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'app_version') String? appVersion,@JsonKey(name: 'os_version') String? osVersion,@JsonKey(name: 'locale') String? locale,@JsonKey(name: 'timezone') String? timezone,@JsonKey(name: 'started_at') String startedAt,@JsonKey(name: 'last_activity_at') String lastActivityAt,@JsonKey(name: 'ended_at') String? endedAt
});




}
/// @nodoc
class _$SessionDtoCopyWithImpl<$Res>
    implements $SessionDtoCopyWith<$Res> {
  _$SessionDtoCopyWithImpl(this._self, this._then);

  final SessionDto _self;
  final $Res Function(SessionDto) _then;

/// Create a copy of SessionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? deviceId = freezed,Object? appVersion = freezed,Object? osVersion = freezed,Object? locale = freezed,Object? timezone = freezed,Object? startedAt = null,Object? lastActivityAt = null,Object? endedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String,lastActivityAt: null == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as String,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionDto].
extension SessionDtoPatterns on SessionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionDto value)  $default,){
final _that = this;
switch (_that) {
case _SessionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionDto value)?  $default,){
final _that = this;
switch (_that) {
case _SessionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'app_version')  String? appVersion, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'locale')  String? locale, @JsonKey(name: 'timezone')  String? timezone, @JsonKey(name: 'started_at')  String startedAt, @JsonKey(name: 'last_activity_at')  String lastActivityAt, @JsonKey(name: 'ended_at')  String? endedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionDto() when $default != null:
return $default(_that.id,_that.userId,_that.deviceId,_that.appVersion,_that.osVersion,_that.locale,_that.timezone,_that.startedAt,_that.lastActivityAt,_that.endedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'app_version')  String? appVersion, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'locale')  String? locale, @JsonKey(name: 'timezone')  String? timezone, @JsonKey(name: 'started_at')  String startedAt, @JsonKey(name: 'last_activity_at')  String lastActivityAt, @JsonKey(name: 'ended_at')  String? endedAt)  $default,) {final _that = this;
switch (_that) {
case _SessionDto():
return $default(_that.id,_that.userId,_that.deviceId,_that.appVersion,_that.osVersion,_that.locale,_that.timezone,_that.startedAt,_that.lastActivityAt,_that.endedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'app_version')  String? appVersion, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'locale')  String? locale, @JsonKey(name: 'timezone')  String? timezone, @JsonKey(name: 'started_at')  String startedAt, @JsonKey(name: 'last_activity_at')  String lastActivityAt, @JsonKey(name: 'ended_at')  String? endedAt)?  $default,) {final _that = this;
switch (_that) {
case _SessionDto() when $default != null:
return $default(_that.id,_that.userId,_that.deviceId,_that.appVersion,_that.osVersion,_that.locale,_that.timezone,_that.startedAt,_that.lastActivityAt,_that.endedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionDto extends SessionDto {
  const _SessionDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'app_version') this.appVersion, @JsonKey(name: 'os_version') this.osVersion, @JsonKey(name: 'locale') this.locale, @JsonKey(name: 'timezone') this.timezone, @JsonKey(name: 'started_at') required this.startedAt, @JsonKey(name: 'last_activity_at') required this.lastActivityAt, @JsonKey(name: 'ended_at') this.endedAt}): super._();
  factory _SessionDto.fromJson(Map<String, dynamic> json) => _$SessionDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'app_version') final  String? appVersion;
@override@JsonKey(name: 'os_version') final  String? osVersion;
@override@JsonKey(name: 'locale') final  String? locale;
@override@JsonKey(name: 'timezone') final  String? timezone;
@override@JsonKey(name: 'started_at') final  String startedAt;
@override@JsonKey(name: 'last_activity_at') final  String lastActivityAt;
@override@JsonKey(name: 'ended_at') final  String? endedAt;

/// Create a copy of SessionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionDtoCopyWith<_SessionDto> get copyWith => __$SessionDtoCopyWithImpl<_SessionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,deviceId,appVersion,osVersion,locale,timezone,startedAt,lastActivityAt,endedAt);

@override
String toString() {
  return 'SessionDto(id: $id, userId: $userId, deviceId: $deviceId, appVersion: $appVersion, osVersion: $osVersion, locale: $locale, timezone: $timezone, startedAt: $startedAt, lastActivityAt: $lastActivityAt, endedAt: $endedAt)';
}


}

/// @nodoc
abstract mixin class _$SessionDtoCopyWith<$Res> implements $SessionDtoCopyWith<$Res> {
  factory _$SessionDtoCopyWith(_SessionDto value, $Res Function(_SessionDto) _then) = __$SessionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'app_version') String? appVersion,@JsonKey(name: 'os_version') String? osVersion,@JsonKey(name: 'locale') String? locale,@JsonKey(name: 'timezone') String? timezone,@JsonKey(name: 'started_at') String startedAt,@JsonKey(name: 'last_activity_at') String lastActivityAt,@JsonKey(name: 'ended_at') String? endedAt
});




}
/// @nodoc
class __$SessionDtoCopyWithImpl<$Res>
    implements _$SessionDtoCopyWith<$Res> {
  __$SessionDtoCopyWithImpl(this._self, this._then);

  final _SessionDto _self;
  final $Res Function(_SessionDto) _then;

/// Create a copy of SessionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? deviceId = freezed,Object? appVersion = freezed,Object? osVersion = freezed,Object? locale = freezed,Object? timezone = freezed,Object? startedAt = null,Object? lastActivityAt = null,Object? endedAt = freezed,}) {
  return _then(_SessionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String,lastActivityAt: null == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as String,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
