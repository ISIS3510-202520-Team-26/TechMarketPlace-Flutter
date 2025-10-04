// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppNotification {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get userId; String get type; String get title; String? get body; JsonMap get data; NotificationVia get sentVia; NotificationStatus get status;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime? get readAt;
/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationCopyWith<AppNotification> get copyWith => _$AppNotificationCopyWithImpl<AppNotification>(this as AppNotification, _$identity);

  /// Serializes this AppNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.sentVia, sentVia) || other.sentVia == sentVia)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,title,body,const DeepCollectionEquality().hash(data),sentVia,status,createdAt,readAt);

@override
String toString() {
  return 'AppNotification(id: $id, userId: $userId, type: $type, title: $title, body: $body, data: $data, sentVia: $sentVia, status: $status, createdAt: $createdAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $AppNotificationCopyWith<$Res>  {
  factory $AppNotificationCopyWith(AppNotification value, $Res Function(AppNotification) _then) = _$AppNotificationCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid userId, String type, String title, String? body, JsonMap data, NotificationVia sentVia, NotificationStatus status,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime? readAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get userId;

}
/// @nodoc
class _$AppNotificationCopyWithImpl<$Res>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._self, this._then);

  final AppNotification _self;
  final $Res Function(AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? title = null,Object? body = freezed,Object? data = null,Object? sentVia = null,Object? status = null,Object? createdAt = null,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as JsonMap,sentVia: null == sentVia ? _self.sentVia : sentVia // ignore: cast_nullable_to_non_nullable
as NotificationVia,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppNotification].
extension AppNotificationPatterns on AppNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotification value)  $default,){
final _that = this;
switch (_that) {
case _AppNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotification value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid userId,  String type,  String title,  String? body,  JsonMap data,  NotificationVia sentVia,  NotificationStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.data,_that.sentVia,_that.status,_that.createdAt,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid userId,  String type,  String title,  String? body,  JsonMap data,  NotificationVia sentVia,  NotificationStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime? readAt)  $default,) {final _that = this;
switch (_that) {
case _AppNotification():
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.data,_that.sentVia,_that.status,_that.createdAt,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid userId,  String type,  String title,  String? body,  JsonMap data,  NotificationVia sentVia,  NotificationStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime? readAt)?  $default,) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.data,_that.sentVia,_that.status,_that.createdAt,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppNotification implements AppNotification {
  const _AppNotification({@UuidConverter() required this.id, @UuidConverter() required this.userId, required this.type, required this.title, this.body, final  JsonMap data = const <String, dynamic>{}, required this.sentVia, required this.status, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() this.readAt}): _data = data;
  factory _AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid userId;
@override final  String type;
@override final  String title;
@override final  String? body;
 final  JsonMap _data;
@override@JsonKey() JsonMap get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override final  NotificationVia sentVia;
@override final  NotificationStatus status;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime? readAt;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationCopyWith<_AppNotification> get copyWith => __$AppNotificationCopyWithImpl<_AppNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.sentVia, sentVia) || other.sentVia == sentVia)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,title,body,const DeepCollectionEquality().hash(_data),sentVia,status,createdAt,readAt);

@override
String toString() {
  return 'AppNotification(id: $id, userId: $userId, type: $type, title: $title, body: $body, data: $data, sentVia: $sentVia, status: $status, createdAt: $createdAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationCopyWith<$Res> implements $AppNotificationCopyWith<$Res> {
  factory _$AppNotificationCopyWith(_AppNotification value, $Res Function(_AppNotification) _then) = __$AppNotificationCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid userId, String type, String title, String? body, JsonMap data, NotificationVia sentVia, NotificationStatus status,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime? readAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get userId;

}
/// @nodoc
class __$AppNotificationCopyWithImpl<$Res>
    implements _$AppNotificationCopyWith<$Res> {
  __$AppNotificationCopyWithImpl(this._self, this._then);

  final _AppNotification _self;
  final $Res Function(_AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? title = null,Object? body = freezed,Object? data = null,Object? sentVia = null,Object? status = null,Object? createdAt = null,Object? readAt = freezed,}) {
  return _then(_AppNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as JsonMap,sentVia: null == sentVia ? _self.sentVia : sentVia // ignore: cast_nullable_to_non_nullable
as NotificationVia,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NotificationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// @nodoc
mixin _$AppNotificationDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'type') String get type;@JsonKey(name: 'title') String get title;@JsonKey(name: 'body') String? get body;@JsonKey(name: 'data') Map<String, dynamic>? get data;@JsonKey(name: 'sent_via') String get sentVia;@JsonKey(name: 'status') String get status;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'read_at') String? get readAt;
/// Create a copy of AppNotificationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationDtoCopyWith<AppNotificationDto> get copyWith => _$AppNotificationDtoCopyWithImpl<AppNotificationDto>(this as AppNotificationDto, _$identity);

  /// Serializes this AppNotificationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotificationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.sentVia, sentVia) || other.sentVia == sentVia)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,title,body,const DeepCollectionEquality().hash(data),sentVia,status,createdAt,readAt);

@override
String toString() {
  return 'AppNotificationDto(id: $id, userId: $userId, type: $type, title: $title, body: $body, data: $data, sentVia: $sentVia, status: $status, createdAt: $createdAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $AppNotificationDtoCopyWith<$Res>  {
  factory $AppNotificationDtoCopyWith(AppNotificationDto value, $Res Function(AppNotificationDto) _then) = _$AppNotificationDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'type') String type,@JsonKey(name: 'title') String title,@JsonKey(name: 'body') String? body,@JsonKey(name: 'data') Map<String, dynamic>? data,@JsonKey(name: 'sent_via') String sentVia,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'read_at') String? readAt
});




}
/// @nodoc
class _$AppNotificationDtoCopyWithImpl<$Res>
    implements $AppNotificationDtoCopyWith<$Res> {
  _$AppNotificationDtoCopyWithImpl(this._self, this._then);

  final AppNotificationDto _self;
  final $Res Function(AppNotificationDto) _then;

/// Create a copy of AppNotificationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? title = null,Object? body = freezed,Object? data = freezed,Object? sentVia = null,Object? status = null,Object? createdAt = null,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sentVia: null == sentVia ? _self.sentVia : sentVia // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppNotificationDto].
extension AppNotificationDtoPatterns on AppNotificationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotificationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotificationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotificationDto value)  $default,){
final _that = this;
switch (_that) {
case _AppNotificationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotificationDto value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotificationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String title, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'data')  Map<String, dynamic>? data, @JsonKey(name: 'sent_via')  String sentVia, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'read_at')  String? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotificationDto() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.data,_that.sentVia,_that.status,_that.createdAt,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String title, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'data')  Map<String, dynamic>? data, @JsonKey(name: 'sent_via')  String sentVia, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'read_at')  String? readAt)  $default,) {final _that = this;
switch (_that) {
case _AppNotificationDto():
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.data,_that.sentVia,_that.status,_that.createdAt,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String title, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'data')  Map<String, dynamic>? data, @JsonKey(name: 'sent_via')  String sentVia, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'read_at')  String? readAt)?  $default,) {final _that = this;
switch (_that) {
case _AppNotificationDto() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.data,_that.sentVia,_that.status,_that.createdAt,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppNotificationDto extends AppNotificationDto {
  const _AppNotificationDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'body') this.body, @JsonKey(name: 'data') final  Map<String, dynamic>? data, @JsonKey(name: 'sent_via') required this.sentVia, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'read_at') this.readAt}): _data = data,super._();
  factory _AppNotificationDto.fromJson(Map<String, dynamic> json) => _$AppNotificationDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'body') final  String? body;
 final  Map<String, dynamic>? _data;
@override@JsonKey(name: 'data') Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'sent_via') final  String sentVia;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'read_at') final  String? readAt;

/// Create a copy of AppNotificationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationDtoCopyWith<_AppNotificationDto> get copyWith => __$AppNotificationDtoCopyWithImpl<_AppNotificationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppNotificationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotificationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.sentVia, sentVia) || other.sentVia == sentVia)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,title,body,const DeepCollectionEquality().hash(_data),sentVia,status,createdAt,readAt);

@override
String toString() {
  return 'AppNotificationDto(id: $id, userId: $userId, type: $type, title: $title, body: $body, data: $data, sentVia: $sentVia, status: $status, createdAt: $createdAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationDtoCopyWith<$Res> implements $AppNotificationDtoCopyWith<$Res> {
  factory _$AppNotificationDtoCopyWith(_AppNotificationDto value, $Res Function(_AppNotificationDto) _then) = __$AppNotificationDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'type') String type,@JsonKey(name: 'title') String title,@JsonKey(name: 'body') String? body,@JsonKey(name: 'data') Map<String, dynamic>? data,@JsonKey(name: 'sent_via') String sentVia,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'read_at') String? readAt
});




}
/// @nodoc
class __$AppNotificationDtoCopyWithImpl<$Res>
    implements _$AppNotificationDtoCopyWith<$Res> {
  __$AppNotificationDtoCopyWithImpl(this._self, this._then);

  final _AppNotificationDto _self;
  final $Res Function(_AppNotificationDto) _then;

/// Create a copy of AppNotificationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? title = null,Object? body = freezed,Object? data = freezed,Object? sentVia = null,Object? status = null,Object? createdAt = null,Object? readAt = freezed,}) {
  return _then(_AppNotificationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sentVia: null == sentVia ? _self.sentVia : sentVia // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
