// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditLog {

@UuidConverter() Uuid get id;@UuidConverter() Uuid? get actorUserId; String get action; String get entityType;@UuidConverter() Uuid get entityId; JsonMap get dataBefore; JsonMap get dataAfter; String? get ip; String? get userAgent;@UtcDateTimeConverter() DateTime get occurredAt;
/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditLogCopyWith<AuditLog> get copyWith => _$AuditLogCopyWithImpl<AuditLog>(this as AuditLog, _$identity);

  /// Serializes this AuditLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditLog&&(identical(other.id, id) || other.id == id)&&(identical(other.actorUserId, actorUserId) || other.actorUserId == actorUserId)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&const DeepCollectionEquality().equals(other.dataBefore, dataBefore)&&const DeepCollectionEquality().equals(other.dataAfter, dataAfter)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorUserId,action,entityType,entityId,const DeepCollectionEquality().hash(dataBefore),const DeepCollectionEquality().hash(dataAfter),ip,userAgent,occurredAt);

@override
String toString() {
  return 'AuditLog(id: $id, actorUserId: $actorUserId, action: $action, entityType: $entityType, entityId: $entityId, dataBefore: $dataBefore, dataAfter: $dataAfter, ip: $ip, userAgent: $userAgent, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class $AuditLogCopyWith<$Res>  {
  factory $AuditLogCopyWith(AuditLog value, $Res Function(AuditLog) _then) = _$AuditLogCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? actorUserId, String action, String entityType,@UuidConverter() Uuid entityId, JsonMap dataBefore, JsonMap dataAfter, String? ip, String? userAgent,@UtcDateTimeConverter() DateTime occurredAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res>? get actorUserId;$UuidCopyWith<$Res> get entityId;

}
/// @nodoc
class _$AuditLogCopyWithImpl<$Res>
    implements $AuditLogCopyWith<$Res> {
  _$AuditLogCopyWithImpl(this._self, this._then);

  final AuditLog _self;
  final $Res Function(AuditLog) _then;

/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? actorUserId = freezed,Object? action = null,Object? entityType = null,Object? entityId = null,Object? dataBefore = null,Object? dataAfter = null,Object? ip = freezed,Object? userAgent = freezed,Object? occurredAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,actorUserId: freezed == actorUserId ? _self.actorUserId : actorUserId // ignore: cast_nullable_to_non_nullable
as Uuid?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as Uuid,dataBefore: null == dataBefore ? _self.dataBefore : dataBefore // ignore: cast_nullable_to_non_nullable
as JsonMap,dataAfter: null == dataAfter ? _self.dataAfter : dataAfter // ignore: cast_nullable_to_non_nullable
as JsonMap,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get actorUserId {
    if (_self.actorUserId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.actorUserId!, (value) {
    return _then(_self.copyWith(actorUserId: value));
  });
}/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get entityId {
  
  return $UuidCopyWith<$Res>(_self.entityId, (value) {
    return _then(_self.copyWith(entityId: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuditLog].
extension AuditLogPatterns on AuditLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditLog value)  $default,){
final _that = this;
switch (_that) {
case _AuditLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditLog value)?  $default,){
final _that = this;
switch (_that) {
case _AuditLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? actorUserId,  String action,  String entityType, @UuidConverter()  Uuid entityId,  JsonMap dataBefore,  JsonMap dataAfter,  String? ip,  String? userAgent, @UtcDateTimeConverter()  DateTime occurredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditLog() when $default != null:
return $default(_that.id,_that.actorUserId,_that.action,_that.entityType,_that.entityId,_that.dataBefore,_that.dataAfter,_that.ip,_that.userAgent,_that.occurredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? actorUserId,  String action,  String entityType, @UuidConverter()  Uuid entityId,  JsonMap dataBefore,  JsonMap dataAfter,  String? ip,  String? userAgent, @UtcDateTimeConverter()  DateTime occurredAt)  $default,) {final _that = this;
switch (_that) {
case _AuditLog():
return $default(_that.id,_that.actorUserId,_that.action,_that.entityType,_that.entityId,_that.dataBefore,_that.dataAfter,_that.ip,_that.userAgent,_that.occurredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? actorUserId,  String action,  String entityType, @UuidConverter()  Uuid entityId,  JsonMap dataBefore,  JsonMap dataAfter,  String? ip,  String? userAgent, @UtcDateTimeConverter()  DateTime occurredAt)?  $default,) {final _that = this;
switch (_that) {
case _AuditLog() when $default != null:
return $default(_that.id,_that.actorUserId,_that.action,_that.entityType,_that.entityId,_that.dataBefore,_that.dataAfter,_that.ip,_that.userAgent,_that.occurredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditLog implements AuditLog {
  const _AuditLog({@UuidConverter() required this.id, @UuidConverter() this.actorUserId, required this.action, required this.entityType, @UuidConverter() required this.entityId, final  JsonMap dataBefore = const <String, dynamic>{}, final  JsonMap dataAfter = const <String, dynamic>{}, this.ip, this.userAgent, @UtcDateTimeConverter() required this.occurredAt}): _dataBefore = dataBefore,_dataAfter = dataAfter;
  factory _AuditLog.fromJson(Map<String, dynamic> json) => _$AuditLogFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid? actorUserId;
@override final  String action;
@override final  String entityType;
@override@UuidConverter() final  Uuid entityId;
 final  JsonMap _dataBefore;
@override@JsonKey() JsonMap get dataBefore {
  if (_dataBefore is EqualUnmodifiableMapView) return _dataBefore;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dataBefore);
}

 final  JsonMap _dataAfter;
@override@JsonKey() JsonMap get dataAfter {
  if (_dataAfter is EqualUnmodifiableMapView) return _dataAfter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dataAfter);
}

@override final  String? ip;
@override final  String? userAgent;
@override@UtcDateTimeConverter() final  DateTime occurredAt;

/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditLogCopyWith<_AuditLog> get copyWith => __$AuditLogCopyWithImpl<_AuditLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditLog&&(identical(other.id, id) || other.id == id)&&(identical(other.actorUserId, actorUserId) || other.actorUserId == actorUserId)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&const DeepCollectionEquality().equals(other._dataBefore, _dataBefore)&&const DeepCollectionEquality().equals(other._dataAfter, _dataAfter)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorUserId,action,entityType,entityId,const DeepCollectionEquality().hash(_dataBefore),const DeepCollectionEquality().hash(_dataAfter),ip,userAgent,occurredAt);

@override
String toString() {
  return 'AuditLog(id: $id, actorUserId: $actorUserId, action: $action, entityType: $entityType, entityId: $entityId, dataBefore: $dataBefore, dataAfter: $dataAfter, ip: $ip, userAgent: $userAgent, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class _$AuditLogCopyWith<$Res> implements $AuditLogCopyWith<$Res> {
  factory _$AuditLogCopyWith(_AuditLog value, $Res Function(_AuditLog) _then) = __$AuditLogCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? actorUserId, String action, String entityType,@UuidConverter() Uuid entityId, JsonMap dataBefore, JsonMap dataAfter, String? ip, String? userAgent,@UtcDateTimeConverter() DateTime occurredAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res>? get actorUserId;@override $UuidCopyWith<$Res> get entityId;

}
/// @nodoc
class __$AuditLogCopyWithImpl<$Res>
    implements _$AuditLogCopyWith<$Res> {
  __$AuditLogCopyWithImpl(this._self, this._then);

  final _AuditLog _self;
  final $Res Function(_AuditLog) _then;

/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? actorUserId = freezed,Object? action = null,Object? entityType = null,Object? entityId = null,Object? dataBefore = null,Object? dataAfter = null,Object? ip = freezed,Object? userAgent = freezed,Object? occurredAt = null,}) {
  return _then(_AuditLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,actorUserId: freezed == actorUserId ? _self.actorUserId : actorUserId // ignore: cast_nullable_to_non_nullable
as Uuid?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as Uuid,dataBefore: null == dataBefore ? _self._dataBefore : dataBefore // ignore: cast_nullable_to_non_nullable
as JsonMap,dataAfter: null == dataAfter ? _self._dataAfter : dataAfter // ignore: cast_nullable_to_non_nullable
as JsonMap,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get actorUserId {
    if (_self.actorUserId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.actorUserId!, (value) {
    return _then(_self.copyWith(actorUserId: value));
  });
}/// Create a copy of AuditLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get entityId {
  
  return $UuidCopyWith<$Res>(_self.entityId, (value) {
    return _then(_self.copyWith(entityId: value));
  });
}
}


/// @nodoc
mixin _$AuditLogDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'actor_user_id') String? get actorUserId;@JsonKey(name: 'action') String get action;@JsonKey(name: 'entity_type') String get entityType;@JsonKey(name: 'entity_id') String get entityId;@JsonKey(name: 'data_before') Map<String, dynamic>? get dataBefore;@JsonKey(name: 'data_after') Map<String, dynamic>? get dataAfter;@JsonKey(name: 'ip') String? get ip;@JsonKey(name: 'user_agent') String? get userAgent;@JsonKey(name: 'occurred_at') String get occurredAt;
/// Create a copy of AuditLogDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditLogDtoCopyWith<AuditLogDto> get copyWith => _$AuditLogDtoCopyWithImpl<AuditLogDto>(this as AuditLogDto, _$identity);

  /// Serializes this AuditLogDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditLogDto&&(identical(other.id, id) || other.id == id)&&(identical(other.actorUserId, actorUserId) || other.actorUserId == actorUserId)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&const DeepCollectionEquality().equals(other.dataBefore, dataBefore)&&const DeepCollectionEquality().equals(other.dataAfter, dataAfter)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorUserId,action,entityType,entityId,const DeepCollectionEquality().hash(dataBefore),const DeepCollectionEquality().hash(dataAfter),ip,userAgent,occurredAt);

@override
String toString() {
  return 'AuditLogDto(id: $id, actorUserId: $actorUserId, action: $action, entityType: $entityType, entityId: $entityId, dataBefore: $dataBefore, dataAfter: $dataAfter, ip: $ip, userAgent: $userAgent, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class $AuditLogDtoCopyWith<$Res>  {
  factory $AuditLogDtoCopyWith(AuditLogDto value, $Res Function(AuditLogDto) _then) = _$AuditLogDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'actor_user_id') String? actorUserId,@JsonKey(name: 'action') String action,@JsonKey(name: 'entity_type') String entityType,@JsonKey(name: 'entity_id') String entityId,@JsonKey(name: 'data_before') Map<String, dynamic>? dataBefore,@JsonKey(name: 'data_after') Map<String, dynamic>? dataAfter,@JsonKey(name: 'ip') String? ip,@JsonKey(name: 'user_agent') String? userAgent,@JsonKey(name: 'occurred_at') String occurredAt
});




}
/// @nodoc
class _$AuditLogDtoCopyWithImpl<$Res>
    implements $AuditLogDtoCopyWith<$Res> {
  _$AuditLogDtoCopyWithImpl(this._self, this._then);

  final AuditLogDto _self;
  final $Res Function(AuditLogDto) _then;

/// Create a copy of AuditLogDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? actorUserId = freezed,Object? action = null,Object? entityType = null,Object? entityId = null,Object? dataBefore = freezed,Object? dataAfter = freezed,Object? ip = freezed,Object? userAgent = freezed,Object? occurredAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actorUserId: freezed == actorUserId ? _self.actorUserId : actorUserId // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,dataBefore: freezed == dataBefore ? _self.dataBefore : dataBefore // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,dataAfter: freezed == dataAfter ? _self.dataAfter : dataAfter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditLogDto].
extension AuditLogDtoPatterns on AuditLogDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditLogDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditLogDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditLogDto value)  $default,){
final _that = this;
switch (_that) {
case _AuditLogDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditLogDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuditLogDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'actor_user_id')  String? actorUserId, @JsonKey(name: 'action')  String action, @JsonKey(name: 'entity_type')  String entityType, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'data_before')  Map<String, dynamic>? dataBefore, @JsonKey(name: 'data_after')  Map<String, dynamic>? dataAfter, @JsonKey(name: 'ip')  String? ip, @JsonKey(name: 'user_agent')  String? userAgent, @JsonKey(name: 'occurred_at')  String occurredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditLogDto() when $default != null:
return $default(_that.id,_that.actorUserId,_that.action,_that.entityType,_that.entityId,_that.dataBefore,_that.dataAfter,_that.ip,_that.userAgent,_that.occurredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'actor_user_id')  String? actorUserId, @JsonKey(name: 'action')  String action, @JsonKey(name: 'entity_type')  String entityType, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'data_before')  Map<String, dynamic>? dataBefore, @JsonKey(name: 'data_after')  Map<String, dynamic>? dataAfter, @JsonKey(name: 'ip')  String? ip, @JsonKey(name: 'user_agent')  String? userAgent, @JsonKey(name: 'occurred_at')  String occurredAt)  $default,) {final _that = this;
switch (_that) {
case _AuditLogDto():
return $default(_that.id,_that.actorUserId,_that.action,_that.entityType,_that.entityId,_that.dataBefore,_that.dataAfter,_that.ip,_that.userAgent,_that.occurredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'actor_user_id')  String? actorUserId, @JsonKey(name: 'action')  String action, @JsonKey(name: 'entity_type')  String entityType, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'data_before')  Map<String, dynamic>? dataBefore, @JsonKey(name: 'data_after')  Map<String, dynamic>? dataAfter, @JsonKey(name: 'ip')  String? ip, @JsonKey(name: 'user_agent')  String? userAgent, @JsonKey(name: 'occurred_at')  String occurredAt)?  $default,) {final _that = this;
switch (_that) {
case _AuditLogDto() when $default != null:
return $default(_that.id,_that.actorUserId,_that.action,_that.entityType,_that.entityId,_that.dataBefore,_that.dataAfter,_that.ip,_that.userAgent,_that.occurredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditLogDto extends AuditLogDto {
  const _AuditLogDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'actor_user_id') this.actorUserId, @JsonKey(name: 'action') required this.action, @JsonKey(name: 'entity_type') required this.entityType, @JsonKey(name: 'entity_id') required this.entityId, @JsonKey(name: 'data_before') final  Map<String, dynamic>? dataBefore, @JsonKey(name: 'data_after') final  Map<String, dynamic>? dataAfter, @JsonKey(name: 'ip') this.ip, @JsonKey(name: 'user_agent') this.userAgent, @JsonKey(name: 'occurred_at') required this.occurredAt}): _dataBefore = dataBefore,_dataAfter = dataAfter,super._();
  factory _AuditLogDto.fromJson(Map<String, dynamic> json) => _$AuditLogDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'actor_user_id') final  String? actorUserId;
@override@JsonKey(name: 'action') final  String action;
@override@JsonKey(name: 'entity_type') final  String entityType;
@override@JsonKey(name: 'entity_id') final  String entityId;
 final  Map<String, dynamic>? _dataBefore;
@override@JsonKey(name: 'data_before') Map<String, dynamic>? get dataBefore {
  final value = _dataBefore;
  if (value == null) return null;
  if (_dataBefore is EqualUnmodifiableMapView) return _dataBefore;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _dataAfter;
@override@JsonKey(name: 'data_after') Map<String, dynamic>? get dataAfter {
  final value = _dataAfter;
  if (value == null) return null;
  if (_dataAfter is EqualUnmodifiableMapView) return _dataAfter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'ip') final  String? ip;
@override@JsonKey(name: 'user_agent') final  String? userAgent;
@override@JsonKey(name: 'occurred_at') final  String occurredAt;

/// Create a copy of AuditLogDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditLogDtoCopyWith<_AuditLogDto> get copyWith => __$AuditLogDtoCopyWithImpl<_AuditLogDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditLogDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditLogDto&&(identical(other.id, id) || other.id == id)&&(identical(other.actorUserId, actorUserId) || other.actorUserId == actorUserId)&&(identical(other.action, action) || other.action == action)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&const DeepCollectionEquality().equals(other._dataBefore, _dataBefore)&&const DeepCollectionEquality().equals(other._dataAfter, _dataAfter)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorUserId,action,entityType,entityId,const DeepCollectionEquality().hash(_dataBefore),const DeepCollectionEquality().hash(_dataAfter),ip,userAgent,occurredAt);

@override
String toString() {
  return 'AuditLogDto(id: $id, actorUserId: $actorUserId, action: $action, entityType: $entityType, entityId: $entityId, dataBefore: $dataBefore, dataAfter: $dataAfter, ip: $ip, userAgent: $userAgent, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class _$AuditLogDtoCopyWith<$Res> implements $AuditLogDtoCopyWith<$Res> {
  factory _$AuditLogDtoCopyWith(_AuditLogDto value, $Res Function(_AuditLogDto) _then) = __$AuditLogDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'actor_user_id') String? actorUserId,@JsonKey(name: 'action') String action,@JsonKey(name: 'entity_type') String entityType,@JsonKey(name: 'entity_id') String entityId,@JsonKey(name: 'data_before') Map<String, dynamic>? dataBefore,@JsonKey(name: 'data_after') Map<String, dynamic>? dataAfter,@JsonKey(name: 'ip') String? ip,@JsonKey(name: 'user_agent') String? userAgent,@JsonKey(name: 'occurred_at') String occurredAt
});




}
/// @nodoc
class __$AuditLogDtoCopyWithImpl<$Res>
    implements _$AuditLogDtoCopyWith<$Res> {
  __$AuditLogDtoCopyWithImpl(this._self, this._then);

  final _AuditLogDto _self;
  final $Res Function(_AuditLogDto) _then;

/// Create a copy of AuditLogDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? actorUserId = freezed,Object? action = null,Object? entityType = null,Object? entityId = null,Object? dataBefore = freezed,Object? dataAfter = freezed,Object? ip = freezed,Object? userAgent = freezed,Object? occurredAt = null,}) {
  return _then(_AuditLogDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actorUserId: freezed == actorUserId ? _self.actorUserId : actorUserId // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,dataBefore: freezed == dataBefore ? _self._dataBefore : dataBefore // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,dataAfter: freezed == dataAfter ? _self._dataAfter : dataAfter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ip: freezed == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
