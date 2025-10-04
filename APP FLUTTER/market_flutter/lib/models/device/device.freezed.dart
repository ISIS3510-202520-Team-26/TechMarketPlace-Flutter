// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Device {

@UuidConverter() Uuid get id;@UuidConverter() Uuid? get userId; DevicePlatform get platform; String? get deviceModel;/// Encrypted push token (base64 bytes).
 List<int>? get pushTokenEnc; bool get isVerified; JsonMap get metadata;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(this as Device, _$identity);

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Device&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.deviceModel, deviceModel) || other.deviceModel == deviceModel)&&const DeepCollectionEquality().equals(other.pushTokenEnc, pushTokenEnc)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,platform,deviceModel,const DeepCollectionEquality().hash(pushTokenEnc),isVerified,const DeepCollectionEquality().hash(metadata),createdAt,updatedAt);

@override
String toString() {
  return 'Device(id: $id, userId: $userId, platform: $platform, deviceModel: $deviceModel, pushTokenEnc: $pushTokenEnc, isVerified: $isVerified, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DeviceCopyWith<$Res>  {
  factory $DeviceCopyWith(Device value, $Res Function(Device) _then) = _$DeviceCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? userId, DevicePlatform platform, String? deviceModel, List<int>? pushTokenEnc, bool isVerified, JsonMap metadata,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res>? get userId;

}
/// @nodoc
class _$DeviceCopyWithImpl<$Res>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._self, this._then);

  final Device _self;
  final $Res Function(Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? platform = null,Object? deviceModel = freezed,Object? pushTokenEnc = freezed,Object? isVerified = null,Object? metadata = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as DevicePlatform,deviceModel: freezed == deviceModel ? _self.deviceModel : deviceModel // ignore: cast_nullable_to_non_nullable
as String?,pushTokenEnc: freezed == pushTokenEnc ? _self.pushTokenEnc : pushTokenEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as JsonMap,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Device
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
}
}


/// Adds pattern-matching-related methods to [Device].
extension DevicePatterns on Device {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Device value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Device() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Device value)  $default,){
final _that = this;
switch (_that) {
case _Device():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Device value)?  $default,){
final _that = this;
switch (_that) {
case _Device() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId,  DevicePlatform platform,  String? deviceModel,  List<int>? pushTokenEnc,  bool isVerified,  JsonMap metadata, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.id,_that.userId,_that.platform,_that.deviceModel,_that.pushTokenEnc,_that.isVerified,_that.metadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId,  DevicePlatform platform,  String? deviceModel,  List<int>? pushTokenEnc,  bool isVerified,  JsonMap metadata, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Device():
return $default(_that.id,_that.userId,_that.platform,_that.deviceModel,_that.pushTokenEnc,_that.isVerified,_that.metadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId,  DevicePlatform platform,  String? deviceModel,  List<int>? pushTokenEnc,  bool isVerified,  JsonMap metadata, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.id,_that.userId,_that.platform,_that.deviceModel,_that.pushTokenEnc,_that.isVerified,_that.metadata,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Device implements Device {
  const _Device({@UuidConverter() required this.id, @UuidConverter() this.userId, required this.platform, this.deviceModel, final  List<int>? pushTokenEnc, this.isVerified = false, final  JsonMap metadata = const <String, dynamic>{}, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt}): _pushTokenEnc = pushTokenEnc,_metadata = metadata;
  factory _Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid? userId;
@override final  DevicePlatform platform;
@override final  String? deviceModel;
/// Encrypted push token (base64 bytes).
 final  List<int>? _pushTokenEnc;
/// Encrypted push token (base64 bytes).
@override List<int>? get pushTokenEnc {
  final value = _pushTokenEnc;
  if (value == null) return null;
  if (_pushTokenEnc is EqualUnmodifiableListView) return _pushTokenEnc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isVerified;
 final  JsonMap _metadata;
@override@JsonKey() JsonMap get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCopyWith<_Device> get copyWith => __$DeviceCopyWithImpl<_Device>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Device&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.deviceModel, deviceModel) || other.deviceModel == deviceModel)&&const DeepCollectionEquality().equals(other._pushTokenEnc, _pushTokenEnc)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,platform,deviceModel,const DeepCollectionEquality().hash(_pushTokenEnc),isVerified,const DeepCollectionEquality().hash(_metadata),createdAt,updatedAt);

@override
String toString() {
  return 'Device(id: $id, userId: $userId, platform: $platform, deviceModel: $deviceModel, pushTokenEnc: $pushTokenEnc, isVerified: $isVerified, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) _then) = __$DeviceCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? userId, DevicePlatform platform, String? deviceModel, List<int>? pushTokenEnc, bool isVerified, JsonMap metadata,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res>? get userId;

}
/// @nodoc
class __$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(this._self, this._then);

  final _Device _self;
  final $Res Function(_Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? platform = null,Object? deviceModel = freezed,Object? pushTokenEnc = freezed,Object? isVerified = null,Object? metadata = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Device(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as DevicePlatform,deviceModel: freezed == deviceModel ? _self.deviceModel : deviceModel // ignore: cast_nullable_to_non_nullable
as String?,pushTokenEnc: freezed == pushTokenEnc ? _self._pushTokenEnc : pushTokenEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as JsonMap,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Device
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
}
}


/// @nodoc
mixin _$DeviceDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'platform') String get platform;@JsonKey(name: 'device_model') String? get deviceModel;@JsonKey(name: 'push_token_enc') List<int>? get pushTokenEnc;@JsonKey(name: 'is_verified') bool get isVerified;@JsonKey(name: 'metadata') Map<String, dynamic>? get metadata;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of DeviceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceDtoCopyWith<DeviceDto> get copyWith => _$DeviceDtoCopyWithImpl<DeviceDto>(this as DeviceDto, _$identity);

  /// Serializes this DeviceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.deviceModel, deviceModel) || other.deviceModel == deviceModel)&&const DeepCollectionEquality().equals(other.pushTokenEnc, pushTokenEnc)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,platform,deviceModel,const DeepCollectionEquality().hash(pushTokenEnc),isVerified,const DeepCollectionEquality().hash(metadata),createdAt,updatedAt);

@override
String toString() {
  return 'DeviceDto(id: $id, userId: $userId, platform: $platform, deviceModel: $deviceModel, pushTokenEnc: $pushTokenEnc, isVerified: $isVerified, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DeviceDtoCopyWith<$Res>  {
  factory $DeviceDtoCopyWith(DeviceDto value, $Res Function(DeviceDto) _then) = _$DeviceDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'platform') String platform,@JsonKey(name: 'device_model') String? deviceModel,@JsonKey(name: 'push_token_enc') List<int>? pushTokenEnc,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'metadata') Map<String, dynamic>? metadata,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$DeviceDtoCopyWithImpl<$Res>
    implements $DeviceDtoCopyWith<$Res> {
  _$DeviceDtoCopyWithImpl(this._self, this._then);

  final DeviceDto _self;
  final $Res Function(DeviceDto) _then;

/// Create a copy of DeviceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? platform = null,Object? deviceModel = freezed,Object? pushTokenEnc = freezed,Object? isVerified = null,Object? metadata = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,deviceModel: freezed == deviceModel ? _self.deviceModel : deviceModel // ignore: cast_nullable_to_non_nullable
as String?,pushTokenEnc: freezed == pushTokenEnc ? _self.pushTokenEnc : pushTokenEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceDto].
extension DeviceDtoPatterns on DeviceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceDto value)  $default,){
final _that = this;
switch (_that) {
case _DeviceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'platform')  String platform, @JsonKey(name: 'device_model')  String? deviceModel, @JsonKey(name: 'push_token_enc')  List<int>? pushTokenEnc, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceDto() when $default != null:
return $default(_that.id,_that.userId,_that.platform,_that.deviceModel,_that.pushTokenEnc,_that.isVerified,_that.metadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'platform')  String platform, @JsonKey(name: 'device_model')  String? deviceModel, @JsonKey(name: 'push_token_enc')  List<int>? pushTokenEnc, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DeviceDto():
return $default(_that.id,_that.userId,_that.platform,_that.deviceModel,_that.pushTokenEnc,_that.isVerified,_that.metadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'platform')  String platform, @JsonKey(name: 'device_model')  String? deviceModel, @JsonKey(name: 'push_token_enc')  List<int>? pushTokenEnc, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'metadata')  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DeviceDto() when $default != null:
return $default(_that.id,_that.userId,_that.platform,_that.deviceModel,_that.pushTokenEnc,_that.isVerified,_that.metadata,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceDto extends DeviceDto {
  const _DeviceDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'platform') required this.platform, @JsonKey(name: 'device_model') this.deviceModel, @JsonKey(name: 'push_token_enc') final  List<int>? pushTokenEnc, @JsonKey(name: 'is_verified') required this.isVerified, @JsonKey(name: 'metadata') final  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _pushTokenEnc = pushTokenEnc,_metadata = metadata,super._();
  factory _DeviceDto.fromJson(Map<String, dynamic> json) => _$DeviceDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'platform') final  String platform;
@override@JsonKey(name: 'device_model') final  String? deviceModel;
 final  List<int>? _pushTokenEnc;
@override@JsonKey(name: 'push_token_enc') List<int>? get pushTokenEnc {
  final value = _pushTokenEnc;
  if (value == null) return null;
  if (_pushTokenEnc is EqualUnmodifiableListView) return _pushTokenEnc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_verified') final  bool isVerified;
 final  Map<String, dynamic>? _metadata;
@override@JsonKey(name: 'metadata') Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of DeviceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceDtoCopyWith<_DeviceDto> get copyWith => __$DeviceDtoCopyWithImpl<_DeviceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.deviceModel, deviceModel) || other.deviceModel == deviceModel)&&const DeepCollectionEquality().equals(other._pushTokenEnc, _pushTokenEnc)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,platform,deviceModel,const DeepCollectionEquality().hash(_pushTokenEnc),isVerified,const DeepCollectionEquality().hash(_metadata),createdAt,updatedAt);

@override
String toString() {
  return 'DeviceDto(id: $id, userId: $userId, platform: $platform, deviceModel: $deviceModel, pushTokenEnc: $pushTokenEnc, isVerified: $isVerified, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceDtoCopyWith<$Res> implements $DeviceDtoCopyWith<$Res> {
  factory _$DeviceDtoCopyWith(_DeviceDto value, $Res Function(_DeviceDto) _then) = __$DeviceDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'platform') String platform,@JsonKey(name: 'device_model') String? deviceModel,@JsonKey(name: 'push_token_enc') List<int>? pushTokenEnc,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'metadata') Map<String, dynamic>? metadata,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$DeviceDtoCopyWithImpl<$Res>
    implements _$DeviceDtoCopyWith<$Res> {
  __$DeviceDtoCopyWithImpl(this._self, this._then);

  final _DeviceDto _self;
  final $Res Function(_DeviceDto) _then;

/// Create a copy of DeviceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? platform = null,Object? deviceModel = freezed,Object? pushTokenEnc = freezed,Object? isVerified = null,Object? metadata = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DeviceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,deviceModel: freezed == deviceModel ? _self.deviceModel : deviceModel // ignore: cast_nullable_to_non_nullable
as String?,pushTokenEnc: freezed == pushTokenEnc ? _self._pushTokenEnc : pushTokenEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
