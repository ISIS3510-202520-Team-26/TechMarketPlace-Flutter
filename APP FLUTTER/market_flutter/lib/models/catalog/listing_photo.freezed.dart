// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingPhoto {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get listingId; String get url; String? get altText; int get position; bool get isPrimary;@UtcDateTimeConverter() DateTime get createdAt;
/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingPhotoCopyWith<ListingPhoto> get copyWith => _$ListingPhotoCopyWithImpl<ListingPhoto>(this as ListingPhoto, _$identity);

  /// Serializes this ListingPhoto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingPhoto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.url, url) || other.url == url)&&(identical(other.altText, altText) || other.altText == altText)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,url,altText,position,isPrimary,createdAt);

@override
String toString() {
  return 'ListingPhoto(id: $id, listingId: $listingId, url: $url, altText: $altText, position: $position, isPrimary: $isPrimary, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ListingPhotoCopyWith<$Res>  {
  factory $ListingPhotoCopyWith(ListingPhoto value, $Res Function(ListingPhoto) _then) = _$ListingPhotoCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId, String url, String? altText, int position, bool isPrimary,@UtcDateTimeConverter() DateTime createdAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get listingId;

}
/// @nodoc
class _$ListingPhotoCopyWithImpl<$Res>
    implements $ListingPhotoCopyWith<$Res> {
  _$ListingPhotoCopyWithImpl(this._self, this._then);

  final ListingPhoto _self;
  final $Res Function(ListingPhoto) _then;

/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? url = null,Object? altText = freezed,Object? position = null,Object? isPrimary = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}
}


/// Adds pattern-matching-related methods to [ListingPhoto].
extension ListingPhotoPatterns on ListingPhoto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingPhoto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingPhoto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingPhoto value)  $default,){
final _that = this;
switch (_that) {
case _ListingPhoto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingPhoto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingPhoto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId,  String url,  String? altText,  int position,  bool isPrimary, @UtcDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingPhoto() when $default != null:
return $default(_that.id,_that.listingId,_that.url,_that.altText,_that.position,_that.isPrimary,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId,  String url,  String? altText,  int position,  bool isPrimary, @UtcDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ListingPhoto():
return $default(_that.id,_that.listingId,_that.url,_that.altText,_that.position,_that.isPrimary,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId,  String url,  String? altText,  int position,  bool isPrimary, @UtcDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingPhoto() when $default != null:
return $default(_that.id,_that.listingId,_that.url,_that.altText,_that.position,_that.isPrimary,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingPhoto implements ListingPhoto {
  const _ListingPhoto({@UuidConverter() required this.id, @UuidConverter() required this.listingId, required this.url, this.altText, this.position = 0, this.isPrimary = false, @UtcDateTimeConverter() required this.createdAt});
  factory _ListingPhoto.fromJson(Map<String, dynamic> json) => _$ListingPhotoFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid listingId;
@override final  String url;
@override final  String? altText;
@override@JsonKey() final  int position;
@override@JsonKey() final  bool isPrimary;
@override@UtcDateTimeConverter() final  DateTime createdAt;

/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingPhotoCopyWith<_ListingPhoto> get copyWith => __$ListingPhotoCopyWithImpl<_ListingPhoto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingPhotoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingPhoto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.url, url) || other.url == url)&&(identical(other.altText, altText) || other.altText == altText)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,url,altText,position,isPrimary,createdAt);

@override
String toString() {
  return 'ListingPhoto(id: $id, listingId: $listingId, url: $url, altText: $altText, position: $position, isPrimary: $isPrimary, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ListingPhotoCopyWith<$Res> implements $ListingPhotoCopyWith<$Res> {
  factory _$ListingPhotoCopyWith(_ListingPhoto value, $Res Function(_ListingPhoto) _then) = __$ListingPhotoCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId, String url, String? altText, int position, bool isPrimary,@UtcDateTimeConverter() DateTime createdAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get listingId;

}
/// @nodoc
class __$ListingPhotoCopyWithImpl<$Res>
    implements _$ListingPhotoCopyWith<$Res> {
  __$ListingPhotoCopyWithImpl(this._self, this._then);

  final _ListingPhoto _self;
  final $Res Function(_ListingPhoto) _then;

/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? url = null,Object? altText = freezed,Object? position = null,Object? isPrimary = null,Object? createdAt = null,}) {
  return _then(_ListingPhoto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of ListingPhoto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}
}


/// @nodoc
mixin _$ListingPhotoDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'listing_id') String get listingId;@JsonKey(name: 'url') String get url;@JsonKey(name: 'alt_text') String? get altText;@JsonKey(name: 'position') int get position;@JsonKey(name: 'is_primary') bool get isPrimary;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ListingPhotoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingPhotoDtoCopyWith<ListingPhotoDto> get copyWith => _$ListingPhotoDtoCopyWithImpl<ListingPhotoDto>(this as ListingPhotoDto, _$identity);

  /// Serializes this ListingPhotoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingPhotoDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.url, url) || other.url == url)&&(identical(other.altText, altText) || other.altText == altText)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,url,altText,position,isPrimary,createdAt);

@override
String toString() {
  return 'ListingPhotoDto(id: $id, listingId: $listingId, url: $url, altText: $altText, position: $position, isPrimary: $isPrimary, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ListingPhotoDtoCopyWith<$Res>  {
  factory $ListingPhotoDtoCopyWith(ListingPhotoDto value, $Res Function(ListingPhotoDto) _then) = _$ListingPhotoDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'url') String url,@JsonKey(name: 'alt_text') String? altText,@JsonKey(name: 'position') int position,@JsonKey(name: 'is_primary') bool isPrimary,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ListingPhotoDtoCopyWithImpl<$Res>
    implements $ListingPhotoDtoCopyWith<$Res> {
  _$ListingPhotoDtoCopyWithImpl(this._self, this._then);

  final ListingPhotoDto _self;
  final $Res Function(ListingPhotoDto) _then;

/// Create a copy of ListingPhotoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? url = null,Object? altText = freezed,Object? position = null,Object? isPrimary = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingPhotoDto].
extension ListingPhotoDtoPatterns on ListingPhotoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingPhotoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingPhotoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingPhotoDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingPhotoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingPhotoDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingPhotoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'url')  String url, @JsonKey(name: 'alt_text')  String? altText, @JsonKey(name: 'position')  int position, @JsonKey(name: 'is_primary')  bool isPrimary, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingPhotoDto() when $default != null:
return $default(_that.id,_that.listingId,_that.url,_that.altText,_that.position,_that.isPrimary,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'url')  String url, @JsonKey(name: 'alt_text')  String? altText, @JsonKey(name: 'position')  int position, @JsonKey(name: 'is_primary')  bool isPrimary, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ListingPhotoDto():
return $default(_that.id,_that.listingId,_that.url,_that.altText,_that.position,_that.isPrimary,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'url')  String url, @JsonKey(name: 'alt_text')  String? altText, @JsonKey(name: 'position')  int position, @JsonKey(name: 'is_primary')  bool isPrimary, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingPhotoDto() when $default != null:
return $default(_that.id,_that.listingId,_that.url,_that.altText,_that.position,_that.isPrimary,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingPhotoDto extends ListingPhotoDto {
  const _ListingPhotoDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'listing_id') required this.listingId, @JsonKey(name: 'url') required this.url, @JsonKey(name: 'alt_text') this.altText, @JsonKey(name: 'position') required this.position, @JsonKey(name: 'is_primary') required this.isPrimary, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _ListingPhotoDto.fromJson(Map<String, dynamic> json) => _$ListingPhotoDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'listing_id') final  String listingId;
@override@JsonKey(name: 'url') final  String url;
@override@JsonKey(name: 'alt_text') final  String? altText;
@override@JsonKey(name: 'position') final  int position;
@override@JsonKey(name: 'is_primary') final  bool isPrimary;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ListingPhotoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingPhotoDtoCopyWith<_ListingPhotoDto> get copyWith => __$ListingPhotoDtoCopyWithImpl<_ListingPhotoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingPhotoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingPhotoDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.url, url) || other.url == url)&&(identical(other.altText, altText) || other.altText == altText)&&(identical(other.position, position) || other.position == position)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,url,altText,position,isPrimary,createdAt);

@override
String toString() {
  return 'ListingPhotoDto(id: $id, listingId: $listingId, url: $url, altText: $altText, position: $position, isPrimary: $isPrimary, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ListingPhotoDtoCopyWith<$Res> implements $ListingPhotoDtoCopyWith<$Res> {
  factory _$ListingPhotoDtoCopyWith(_ListingPhotoDto value, $Res Function(_ListingPhotoDto) _then) = __$ListingPhotoDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'url') String url,@JsonKey(name: 'alt_text') String? altText,@JsonKey(name: 'position') int position,@JsonKey(name: 'is_primary') bool isPrimary,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ListingPhotoDtoCopyWithImpl<$Res>
    implements _$ListingPhotoDtoCopyWith<$Res> {
  __$ListingPhotoDtoCopyWithImpl(this._self, this._then);

  final _ListingPhotoDto _self;
  final $Res Function(_ListingPhotoDto) _then;

/// Create a copy of ListingPhotoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? url = null,Object? altText = freezed,Object? position = null,Object? isPrimary = null,Object? createdAt = null,}) {
  return _then(_ListingPhotoDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
