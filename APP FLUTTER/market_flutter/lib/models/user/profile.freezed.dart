// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Profile {

@UuidConverter() Uuid get userId; String? get displayName; String? get avatarUrl; String? get bio; String? get campus;@UuidConverter() Uuid? get defaultLocationId; Map<String, dynamic> get preferences; int get ratingTotal; int get ratingCount;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileCopyWith<Profile> get copyWith => _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Profile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.defaultLocationId, defaultLocationId) || other.defaultLocationId == defaultLocationId)&&const DeepCollectionEquality().equals(other.preferences, preferences)&&(identical(other.ratingTotal, ratingTotal) || other.ratingTotal == ratingTotal)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,displayName,avatarUrl,bio,campus,defaultLocationId,const DeepCollectionEquality().hash(preferences),ratingTotal,ratingCount,createdAt,updatedAt);

@override
String toString() {
  return 'Profile(userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, bio: $bio, campus: $campus, defaultLocationId: $defaultLocationId, preferences: $preferences, ratingTotal: $ratingTotal, ratingCount: $ratingCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res>  {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) = _$ProfileCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid userId, String? displayName, String? avatarUrl, String? bio, String? campus,@UuidConverter() Uuid? defaultLocationId, Map<String, dynamic> preferences, int ratingTotal, int ratingCount,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});


$UuidCopyWith<$Res> get userId;$UuidCopyWith<$Res>? get defaultLocationId;

}
/// @nodoc
class _$ProfileCopyWithImpl<$Res>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? campus = freezed,Object? defaultLocationId = freezed,Object? preferences = null,Object? ratingTotal = null,Object? ratingCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,defaultLocationId: freezed == defaultLocationId ? _self.defaultLocationId : defaultLocationId // ignore: cast_nullable_to_non_nullable
as Uuid?,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,ratingTotal: null == ratingTotal ? _self.ratingTotal : ratingTotal // ignore: cast_nullable_to_non_nullable
as int,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get defaultLocationId {
    if (_self.defaultLocationId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.defaultLocationId!, (value) {
    return _then(_self.copyWith(defaultLocationId: value));
  });
}
}


/// Adds pattern-matching-related methods to [Profile].
extension ProfilePatterns on Profile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Profile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Profile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Profile value)  $default,){
final _that = this;
switch (_that) {
case _Profile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Profile value)?  $default,){
final _that = this;
switch (_that) {
case _Profile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid userId,  String? displayName,  String? avatarUrl,  String? bio,  String? campus, @UuidConverter()  Uuid? defaultLocationId,  Map<String, dynamic> preferences,  int ratingTotal,  int ratingCount, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that.userId,_that.displayName,_that.avatarUrl,_that.bio,_that.campus,_that.defaultLocationId,_that.preferences,_that.ratingTotal,_that.ratingCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid userId,  String? displayName,  String? avatarUrl,  String? bio,  String? campus, @UuidConverter()  Uuid? defaultLocationId,  Map<String, dynamic> preferences,  int ratingTotal,  int ratingCount, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Profile():
return $default(_that.userId,_that.displayName,_that.avatarUrl,_that.bio,_that.campus,_that.defaultLocationId,_that.preferences,_that.ratingTotal,_that.ratingCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid userId,  String? displayName,  String? avatarUrl,  String? bio,  String? campus, @UuidConverter()  Uuid? defaultLocationId,  Map<String, dynamic> preferences,  int ratingTotal,  int ratingCount, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Profile() when $default != null:
return $default(_that.userId,_that.displayName,_that.avatarUrl,_that.bio,_that.campus,_that.defaultLocationId,_that.preferences,_that.ratingTotal,_that.ratingCount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Profile implements Profile {
  const _Profile({@UuidConverter() required this.userId, this.displayName, this.avatarUrl, this.bio, this.campus, @UuidConverter() this.defaultLocationId, final  Map<String, dynamic> preferences = const <String, dynamic>{}, this.ratingTotal = 0, this.ratingCount = 0, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt}): _preferences = preferences;
  factory _Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

@override@UuidConverter() final  Uuid userId;
@override final  String? displayName;
@override final  String? avatarUrl;
@override final  String? bio;
@override final  String? campus;
@override@UuidConverter() final  Uuid? defaultLocationId;
 final  Map<String, dynamic> _preferences;
@override@JsonKey() Map<String, dynamic> get preferences {
  if (_preferences is EqualUnmodifiableMapView) return _preferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_preferences);
}

@override@JsonKey() final  int ratingTotal;
@override@JsonKey() final  int ratingCount;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileCopyWith<_Profile> get copyWith => __$ProfileCopyWithImpl<_Profile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Profile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.defaultLocationId, defaultLocationId) || other.defaultLocationId == defaultLocationId)&&const DeepCollectionEquality().equals(other._preferences, _preferences)&&(identical(other.ratingTotal, ratingTotal) || other.ratingTotal == ratingTotal)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,displayName,avatarUrl,bio,campus,defaultLocationId,const DeepCollectionEquality().hash(_preferences),ratingTotal,ratingCount,createdAt,updatedAt);

@override
String toString() {
  return 'Profile(userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, bio: $bio, campus: $campus, defaultLocationId: $defaultLocationId, preferences: $preferences, ratingTotal: $ratingTotal, ratingCount: $ratingCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) = __$ProfileCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid userId, String? displayName, String? avatarUrl, String? bio, String? campus,@UuidConverter() Uuid? defaultLocationId, Map<String, dynamic> preferences, int ratingTotal, int ratingCount,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});


@override $UuidCopyWith<$Res> get userId;@override $UuidCopyWith<$Res>? get defaultLocationId;

}
/// @nodoc
class __$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? campus = freezed,Object? defaultLocationId = freezed,Object? preferences = null,Object? ratingTotal = null,Object? ratingCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Profile(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,defaultLocationId: freezed == defaultLocationId ? _self.defaultLocationId : defaultLocationId // ignore: cast_nullable_to_non_nullable
as Uuid?,preferences: null == preferences ? _self._preferences : preferences // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,ratingTotal: null == ratingTotal ? _self.ratingTotal : ratingTotal // ignore: cast_nullable_to_non_nullable
as int,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}/// Create a copy of Profile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get defaultLocationId {
    if (_self.defaultLocationId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.defaultLocationId!, (value) {
    return _then(_self.copyWith(defaultLocationId: value));
  });
}
}


/// @nodoc
mixin _$ProfileDto {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'bio') String? get bio;@JsonKey(name: 'campus') String? get campus;@JsonKey(name: 'default_location_id') String? get defaultLocationId;@JsonKey(name: 'preferences') Map<String, dynamic>? get preferences;@JsonKey(name: 'rating_total') int get ratingTotal;@JsonKey(name: 'rating_count') int get ratingCount;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<ProfileDto> get copyWith => _$ProfileDtoCopyWithImpl<ProfileDto>(this as ProfileDto, _$identity);

  /// Serializes this ProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.defaultLocationId, defaultLocationId) || other.defaultLocationId == defaultLocationId)&&const DeepCollectionEquality().equals(other.preferences, preferences)&&(identical(other.ratingTotal, ratingTotal) || other.ratingTotal == ratingTotal)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,displayName,avatarUrl,bio,campus,defaultLocationId,const DeepCollectionEquality().hash(preferences),ratingTotal,ratingCount,createdAt,updatedAt);

@override
String toString() {
  return 'ProfileDto(userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, bio: $bio, campus: $campus, defaultLocationId: $defaultLocationId, preferences: $preferences, ratingTotal: $ratingTotal, ratingCount: $ratingCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProfileDtoCopyWith<$Res>  {
  factory $ProfileDtoCopyWith(ProfileDto value, $Res Function(ProfileDto) _then) = _$ProfileDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'bio') String? bio,@JsonKey(name: 'campus') String? campus,@JsonKey(name: 'default_location_id') String? defaultLocationId,@JsonKey(name: 'preferences') Map<String, dynamic>? preferences,@JsonKey(name: 'rating_total') int ratingTotal,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._self, this._then);

  final ProfileDto _self;
  final $Res Function(ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? campus = freezed,Object? defaultLocationId = freezed,Object? preferences = freezed,Object? ratingTotal = null,Object? ratingCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,defaultLocationId: freezed == defaultLocationId ? _self.defaultLocationId : defaultLocationId // ignore: cast_nullable_to_non_nullable
as String?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ratingTotal: null == ratingTotal ? _self.ratingTotal : ratingTotal // ignore: cast_nullable_to_non_nullable
as int,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileDto].
extension ProfileDtoPatterns on ProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'bio')  String? bio, @JsonKey(name: 'campus')  String? campus, @JsonKey(name: 'default_location_id')  String? defaultLocationId, @JsonKey(name: 'preferences')  Map<String, dynamic>? preferences, @JsonKey(name: 'rating_total')  int ratingTotal, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.userId,_that.displayName,_that.avatarUrl,_that.bio,_that.campus,_that.defaultLocationId,_that.preferences,_that.ratingTotal,_that.ratingCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'bio')  String? bio, @JsonKey(name: 'campus')  String? campus, @JsonKey(name: 'default_location_id')  String? defaultLocationId, @JsonKey(name: 'preferences')  Map<String, dynamic>? preferences, @JsonKey(name: 'rating_total')  int ratingTotal, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProfileDto():
return $default(_that.userId,_that.displayName,_that.avatarUrl,_that.bio,_that.campus,_that.defaultLocationId,_that.preferences,_that.ratingTotal,_that.ratingCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'bio')  String? bio, @JsonKey(name: 'campus')  String? campus, @JsonKey(name: 'default_location_id')  String? defaultLocationId, @JsonKey(name: 'preferences')  Map<String, dynamic>? preferences, @JsonKey(name: 'rating_total')  int ratingTotal, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.userId,_that.displayName,_that.avatarUrl,_that.bio,_that.campus,_that.defaultLocationId,_that.preferences,_that.ratingTotal,_that.ratingCount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDto extends ProfileDto {
  const _ProfileDto({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'bio') this.bio, @JsonKey(name: 'campus') this.campus, @JsonKey(name: 'default_location_id') this.defaultLocationId, @JsonKey(name: 'preferences') final  Map<String, dynamic>? preferences, @JsonKey(name: 'rating_total') required this.ratingTotal, @JsonKey(name: 'rating_count') required this.ratingCount, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _preferences = preferences,super._();
  factory _ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'bio') final  String? bio;
@override@JsonKey(name: 'campus') final  String? campus;
@override@JsonKey(name: 'default_location_id') final  String? defaultLocationId;
 final  Map<String, dynamic>? _preferences;
@override@JsonKey(name: 'preferences') Map<String, dynamic>? get preferences {
  final value = _preferences;
  if (value == null) return null;
  if (_preferences is EqualUnmodifiableMapView) return _preferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'rating_total') final  int ratingTotal;
@override@JsonKey(name: 'rating_count') final  int ratingCount;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDtoCopyWith<_ProfileDto> get copyWith => __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.defaultLocationId, defaultLocationId) || other.defaultLocationId == defaultLocationId)&&const DeepCollectionEquality().equals(other._preferences, _preferences)&&(identical(other.ratingTotal, ratingTotal) || other.ratingTotal == ratingTotal)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,displayName,avatarUrl,bio,campus,defaultLocationId,const DeepCollectionEquality().hash(_preferences),ratingTotal,ratingCount,createdAt,updatedAt);

@override
String toString() {
  return 'ProfileDto(userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, bio: $bio, campus: $campus, defaultLocationId: $defaultLocationId, preferences: $preferences, ratingTotal: $ratingTotal, ratingCount: $ratingCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(_ProfileDto value, $Res Function(_ProfileDto) _then) = __$ProfileDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'bio') String? bio,@JsonKey(name: 'campus') String? campus,@JsonKey(name: 'default_location_id') String? defaultLocationId,@JsonKey(name: 'preferences') Map<String, dynamic>? preferences,@JsonKey(name: 'rating_total') int ratingTotal,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(this._self, this._then);

  final _ProfileDto _self;
  final $Res Function(_ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? campus = freezed,Object? defaultLocationId = freezed,Object? preferences = freezed,Object? ratingTotal = null,Object? ratingCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ProfileDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String?,defaultLocationId: freezed == defaultLocationId ? _self.defaultLocationId : defaultLocationId // ignore: cast_nullable_to_non_nullable
as String?,preferences: freezed == preferences ? _self._preferences : preferences // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ratingTotal: null == ratingTotal ? _self.ratingTotal : ratingTotal // ignore: cast_nullable_to_non_nullable
as int,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
