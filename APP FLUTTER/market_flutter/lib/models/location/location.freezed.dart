// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppLocation {

@UuidConverter() Uuid get id;@UuidConverter() Uuid? get userId; String? get label; double get lat; double get lon; String? get geohash; String? get addressText; String? get city; String? get state; String? get countryCode; String? get postalCode; bool get isDefault;@UtcDateTimeConverter() DateTime get createdAt;
/// Create a copy of AppLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppLocationCopyWith<AppLocation> get copyWith => _$AppLocationCopyWithImpl<AppLocation>(this as AppLocation, _$identity);

  /// Serializes this AppLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.addressText, addressText) || other.addressText == addressText)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,label,lat,lon,geohash,addressText,city,state,countryCode,postalCode,isDefault,createdAt);

@override
String toString() {
  return 'AppLocation(id: $id, userId: $userId, label: $label, lat: $lat, lon: $lon, geohash: $geohash, addressText: $addressText, city: $city, state: $state, countryCode: $countryCode, postalCode: $postalCode, isDefault: $isDefault, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AppLocationCopyWith<$Res>  {
  factory $AppLocationCopyWith(AppLocation value, $Res Function(AppLocation) _then) = _$AppLocationCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? userId, String? label, double lat, double lon, String? geohash, String? addressText, String? city, String? state, String? countryCode, String? postalCode, bool isDefault,@UtcDateTimeConverter() DateTime createdAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res>? get userId;

}
/// @nodoc
class _$AppLocationCopyWithImpl<$Res>
    implements $AppLocationCopyWith<$Res> {
  _$AppLocationCopyWithImpl(this._self, this._then);

  final AppLocation _self;
  final $Res Function(AppLocation) _then;

/// Create a copy of AppLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? label = freezed,Object? lat = null,Object? lon = null,Object? geohash = freezed,Object? addressText = freezed,Object? city = freezed,Object? state = freezed,Object? countryCode = freezed,Object? postalCode = freezed,Object? isDefault = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,addressText: freezed == addressText ? _self.addressText : addressText // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of AppLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AppLocation
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


/// Adds pattern-matching-related methods to [AppLocation].
extension AppLocationPatterns on AppLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppLocation value)  $default,){
final _that = this;
switch (_that) {
case _AppLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppLocation value)?  $default,){
final _that = this;
switch (_that) {
case _AppLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId,  String? label,  double lat,  double lon,  String? geohash,  String? addressText,  String? city,  String? state,  String? countryCode,  String? postalCode,  bool isDefault, @UtcDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppLocation() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.lat,_that.lon,_that.geohash,_that.addressText,_that.city,_that.state,_that.countryCode,_that.postalCode,_that.isDefault,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId,  String? label,  double lat,  double lon,  String? geohash,  String? addressText,  String? city,  String? state,  String? countryCode,  String? postalCode,  bool isDefault, @UtcDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _AppLocation():
return $default(_that.id,_that.userId,_that.label,_that.lat,_that.lon,_that.geohash,_that.addressText,_that.city,_that.state,_that.countryCode,_that.postalCode,_that.isDefault,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid? userId,  String? label,  double lat,  double lon,  String? geohash,  String? addressText,  String? city,  String? state,  String? countryCode,  String? postalCode,  bool isDefault, @UtcDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AppLocation() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.lat,_that.lon,_that.geohash,_that.addressText,_that.city,_that.state,_that.countryCode,_that.postalCode,_that.isDefault,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppLocation implements AppLocation {
  const _AppLocation({@UuidConverter() required this.id, @UuidConverter() this.userId, this.label, required this.lat, required this.lon, this.geohash, this.addressText, this.city, this.state, this.countryCode, this.postalCode, this.isDefault = false, @UtcDateTimeConverter() required this.createdAt});
  factory _AppLocation.fromJson(Map<String, dynamic> json) => _$AppLocationFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid? userId;
@override final  String? label;
@override final  double lat;
@override final  double lon;
@override final  String? geohash;
@override final  String? addressText;
@override final  String? city;
@override final  String? state;
@override final  String? countryCode;
@override final  String? postalCode;
@override@JsonKey() final  bool isDefault;
@override@UtcDateTimeConverter() final  DateTime createdAt;

/// Create a copy of AppLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppLocationCopyWith<_AppLocation> get copyWith => __$AppLocationCopyWithImpl<_AppLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.addressText, addressText) || other.addressText == addressText)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,label,lat,lon,geohash,addressText,city,state,countryCode,postalCode,isDefault,createdAt);

@override
String toString() {
  return 'AppLocation(id: $id, userId: $userId, label: $label, lat: $lat, lon: $lon, geohash: $geohash, addressText: $addressText, city: $city, state: $state, countryCode: $countryCode, postalCode: $postalCode, isDefault: $isDefault, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AppLocationCopyWith<$Res> implements $AppLocationCopyWith<$Res> {
  factory _$AppLocationCopyWith(_AppLocation value, $Res Function(_AppLocation) _then) = __$AppLocationCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid? userId, String? label, double lat, double lon, String? geohash, String? addressText, String? city, String? state, String? countryCode, String? postalCode, bool isDefault,@UtcDateTimeConverter() DateTime createdAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res>? get userId;

}
/// @nodoc
class __$AppLocationCopyWithImpl<$Res>
    implements _$AppLocationCopyWith<$Res> {
  __$AppLocationCopyWithImpl(this._self, this._then);

  final _AppLocation _self;
  final $Res Function(_AppLocation) _then;

/// Create a copy of AppLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? label = freezed,Object? lat = null,Object? lon = null,Object? geohash = freezed,Object? addressText = freezed,Object? city = freezed,Object? state = freezed,Object? countryCode = freezed,Object? postalCode = freezed,Object? isDefault = null,Object? createdAt = null,}) {
  return _then(_AppLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,addressText: freezed == addressText ? _self.addressText : addressText // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of AppLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AppLocation
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
mixin _$AppLocationDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'label') String? get label;@JsonKey(name: 'lat') num get lat;@JsonKey(name: 'lon') num get lon;@JsonKey(name: 'geohash') String? get geohash;@JsonKey(name: 'address_text') String? get addressText;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'state') String? get state;@JsonKey(name: 'country_code') String? get countryCode;@JsonKey(name: 'postal_code') String? get postalCode;@JsonKey(name: 'is_default') bool get isDefault;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of AppLocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppLocationDtoCopyWith<AppLocationDto> get copyWith => _$AppLocationDtoCopyWithImpl<AppLocationDto>(this as AppLocationDto, _$identity);

  /// Serializes this AppLocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.addressText, addressText) || other.addressText == addressText)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,label,lat,lon,geohash,addressText,city,state,countryCode,postalCode,isDefault,createdAt);

@override
String toString() {
  return 'AppLocationDto(id: $id, userId: $userId, label: $label, lat: $lat, lon: $lon, geohash: $geohash, addressText: $addressText, city: $city, state: $state, countryCode: $countryCode, postalCode: $postalCode, isDefault: $isDefault, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AppLocationDtoCopyWith<$Res>  {
  factory $AppLocationDtoCopyWith(AppLocationDto value, $Res Function(AppLocationDto) _then) = _$AppLocationDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'label') String? label,@JsonKey(name: 'lat') num lat,@JsonKey(name: 'lon') num lon,@JsonKey(name: 'geohash') String? geohash,@JsonKey(name: 'address_text') String? addressText,@JsonKey(name: 'city') String? city,@JsonKey(name: 'state') String? state,@JsonKey(name: 'country_code') String? countryCode,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$AppLocationDtoCopyWithImpl<$Res>
    implements $AppLocationDtoCopyWith<$Res> {
  _$AppLocationDtoCopyWithImpl(this._self, this._then);

  final AppLocationDto _self;
  final $Res Function(AppLocationDto) _then;

/// Create a copy of AppLocationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? label = freezed,Object? lat = null,Object? lon = null,Object? geohash = freezed,Object? addressText = freezed,Object? city = freezed,Object? state = freezed,Object? countryCode = freezed,Object? postalCode = freezed,Object? isDefault = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as num,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as num,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,addressText: freezed == addressText ? _self.addressText : addressText // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppLocationDto].
extension AppLocationDtoPatterns on AppLocationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppLocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppLocationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppLocationDto value)  $default,){
final _that = this;
switch (_that) {
case _AppLocationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppLocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _AppLocationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'label')  String? label, @JsonKey(name: 'lat')  num lat, @JsonKey(name: 'lon')  num lon, @JsonKey(name: 'geohash')  String? geohash, @JsonKey(name: 'address_text')  String? addressText, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppLocationDto() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.lat,_that.lon,_that.geohash,_that.addressText,_that.city,_that.state,_that.countryCode,_that.postalCode,_that.isDefault,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'label')  String? label, @JsonKey(name: 'lat')  num lat, @JsonKey(name: 'lon')  num lon, @JsonKey(name: 'geohash')  String? geohash, @JsonKey(name: 'address_text')  String? addressText, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _AppLocationDto():
return $default(_that.id,_that.userId,_that.label,_that.lat,_that.lon,_that.geohash,_that.addressText,_that.city,_that.state,_that.countryCode,_that.postalCode,_that.isDefault,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'label')  String? label, @JsonKey(name: 'lat')  num lat, @JsonKey(name: 'lon')  num lon, @JsonKey(name: 'geohash')  String? geohash, @JsonKey(name: 'address_text')  String? addressText, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AppLocationDto() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.lat,_that.lon,_that.geohash,_that.addressText,_that.city,_that.state,_that.countryCode,_that.postalCode,_that.isDefault,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppLocationDto extends AppLocationDto {
  const _AppLocationDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'label') this.label, @JsonKey(name: 'lat') required this.lat, @JsonKey(name: 'lon') required this.lon, @JsonKey(name: 'geohash') this.geohash, @JsonKey(name: 'address_text') this.addressText, @JsonKey(name: 'city') this.city, @JsonKey(name: 'state') this.state, @JsonKey(name: 'country_code') this.countryCode, @JsonKey(name: 'postal_code') this.postalCode, @JsonKey(name: 'is_default') required this.isDefault, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _AppLocationDto.fromJson(Map<String, dynamic> json) => _$AppLocationDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'label') final  String? label;
@override@JsonKey(name: 'lat') final  num lat;
@override@JsonKey(name: 'lon') final  num lon;
@override@JsonKey(name: 'geohash') final  String? geohash;
@override@JsonKey(name: 'address_text') final  String? addressText;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'state') final  String? state;
@override@JsonKey(name: 'country_code') final  String? countryCode;
@override@JsonKey(name: 'postal_code') final  String? postalCode;
@override@JsonKey(name: 'is_default') final  bool isDefault;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of AppLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppLocationDtoCopyWith<_AppLocationDto> get copyWith => __$AppLocationDtoCopyWithImpl<_AppLocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppLocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppLocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.geohash, geohash) || other.geohash == geohash)&&(identical(other.addressText, addressText) || other.addressText == addressText)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,label,lat,lon,geohash,addressText,city,state,countryCode,postalCode,isDefault,createdAt);

@override
String toString() {
  return 'AppLocationDto(id: $id, userId: $userId, label: $label, lat: $lat, lon: $lon, geohash: $geohash, addressText: $addressText, city: $city, state: $state, countryCode: $countryCode, postalCode: $postalCode, isDefault: $isDefault, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AppLocationDtoCopyWith<$Res> implements $AppLocationDtoCopyWith<$Res> {
  factory _$AppLocationDtoCopyWith(_AppLocationDto value, $Res Function(_AppLocationDto) _then) = __$AppLocationDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'label') String? label,@JsonKey(name: 'lat') num lat,@JsonKey(name: 'lon') num lon,@JsonKey(name: 'geohash') String? geohash,@JsonKey(name: 'address_text') String? addressText,@JsonKey(name: 'city') String? city,@JsonKey(name: 'state') String? state,@JsonKey(name: 'country_code') String? countryCode,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$AppLocationDtoCopyWithImpl<$Res>
    implements _$AppLocationDtoCopyWith<$Res> {
  __$AppLocationDtoCopyWithImpl(this._self, this._then);

  final _AppLocationDto _self;
  final $Res Function(_AppLocationDto) _then;

/// Create a copy of AppLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? label = freezed,Object? lat = null,Object? lon = null,Object? geohash = freezed,Object? addressText = freezed,Object? city = freezed,Object? state = freezed,Object? countryCode = freezed,Object? postalCode = freezed,Object? isDefault = null,Object? createdAt = null,}) {
  return _then(_AppLocationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as num,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as num,geohash: freezed == geohash ? _self.geohash : geohash // ignore: cast_nullable_to_non_nullable
as String?,addressText: freezed == addressText ? _self.addressText : addressText // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
