// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingReservation {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get listingId;@UuidConverter() Uuid get buyerId; ReservationStatus get status;@UtcDateTimeConverter() DateTime get expiresAt;@UtcDateTimeConverter() DateTime get createdAt;
/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingReservationCopyWith<ListingReservation> get copyWith => _$ListingReservationCopyWithImpl<ListingReservation>(this as ListingReservation, _$identity);

  /// Serializes this ListingReservation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,status,expiresAt,createdAt);

@override
String toString() {
  return 'ListingReservation(id: $id, listingId: $listingId, buyerId: $buyerId, status: $status, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ListingReservationCopyWith<$Res>  {
  factory $ListingReservationCopyWith(ListingReservation value, $Res Function(ListingReservation) _then) = _$ListingReservationCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId,@UuidConverter() Uuid buyerId, ReservationStatus status,@UtcDateTimeConverter() DateTime expiresAt,@UtcDateTimeConverter() DateTime createdAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get listingId;$UuidCopyWith<$Res> get buyerId;

}
/// @nodoc
class _$ListingReservationCopyWithImpl<$Res>
    implements $ListingReservationCopyWith<$Res> {
  _$ListingReservationCopyWithImpl(this._self, this._then);

  final ListingReservation _self;
  final $Res Function(ListingReservation) _then;

/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? status = null,Object? expiresAt = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as Uuid,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReservationStatus,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get buyerId {
  
  return $UuidCopyWith<$Res>(_self.buyerId, (value) {
    return _then(_self.copyWith(buyerId: value));
  });
}
}


/// Adds pattern-matching-related methods to [ListingReservation].
extension ListingReservationPatterns on ListingReservation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingReservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingReservation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingReservation value)  $default,){
final _that = this;
switch (_that) {
case _ListingReservation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingReservation value)?  $default,){
final _that = this;
switch (_that) {
case _ListingReservation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @UuidConverter()  Uuid buyerId,  ReservationStatus status, @UtcDateTimeConverter()  DateTime expiresAt, @UtcDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingReservation() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.status,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @UuidConverter()  Uuid buyerId,  ReservationStatus status, @UtcDateTimeConverter()  DateTime expiresAt, @UtcDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ListingReservation():
return $default(_that.id,_that.listingId,_that.buyerId,_that.status,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @UuidConverter()  Uuid buyerId,  ReservationStatus status, @UtcDateTimeConverter()  DateTime expiresAt, @UtcDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingReservation() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.status,_that.expiresAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingReservation implements ListingReservation {
  const _ListingReservation({@UuidConverter() required this.id, @UuidConverter() required this.listingId, @UuidConverter() required this.buyerId, required this.status, @UtcDateTimeConverter() required this.expiresAt, @UtcDateTimeConverter() required this.createdAt});
  factory _ListingReservation.fromJson(Map<String, dynamic> json) => _$ListingReservationFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid listingId;
@override@UuidConverter() final  Uuid buyerId;
@override final  ReservationStatus status;
@override@UtcDateTimeConverter() final  DateTime expiresAt;
@override@UtcDateTimeConverter() final  DateTime createdAt;

/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingReservationCopyWith<_ListingReservation> get copyWith => __$ListingReservationCopyWithImpl<_ListingReservation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingReservationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,status,expiresAt,createdAt);

@override
String toString() {
  return 'ListingReservation(id: $id, listingId: $listingId, buyerId: $buyerId, status: $status, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ListingReservationCopyWith<$Res> implements $ListingReservationCopyWith<$Res> {
  factory _$ListingReservationCopyWith(_ListingReservation value, $Res Function(_ListingReservation) _then) = __$ListingReservationCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId,@UuidConverter() Uuid buyerId, ReservationStatus status,@UtcDateTimeConverter() DateTime expiresAt,@UtcDateTimeConverter() DateTime createdAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get listingId;@override $UuidCopyWith<$Res> get buyerId;

}
/// @nodoc
class __$ListingReservationCopyWithImpl<$Res>
    implements _$ListingReservationCopyWith<$Res> {
  __$ListingReservationCopyWithImpl(this._self, this._then);

  final _ListingReservation _self;
  final $Res Function(_ListingReservation) _then;

/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? status = null,Object? expiresAt = null,Object? createdAt = null,}) {
  return _then(_ListingReservation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as Uuid,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReservationStatus,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of ListingReservation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get buyerId {
  
  return $UuidCopyWith<$Res>(_self.buyerId, (value) {
    return _then(_self.copyWith(buyerId: value));
  });
}
}


/// @nodoc
mixin _$ListingReservationDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'listing_id') String get listingId;@JsonKey(name: 'buyer_id') String get buyerId;@JsonKey(name: 'status') String get status;@JsonKey(name: 'expires_at') String get expiresAt;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ListingReservationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingReservationDtoCopyWith<ListingReservationDto> get copyWith => _$ListingReservationDtoCopyWithImpl<ListingReservationDto>(this as ListingReservationDto, _$identity);

  /// Serializes this ListingReservationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingReservationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,status,expiresAt,createdAt);

@override
String toString() {
  return 'ListingReservationDto(id: $id, listingId: $listingId, buyerId: $buyerId, status: $status, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ListingReservationDtoCopyWith<$Res>  {
  factory $ListingReservationDtoCopyWith(ListingReservationDto value, $Res Function(ListingReservationDto) _then) = _$ListingReservationDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'buyer_id') String buyerId,@JsonKey(name: 'status') String status,@JsonKey(name: 'expires_at') String expiresAt,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ListingReservationDtoCopyWithImpl<$Res>
    implements $ListingReservationDtoCopyWith<$Res> {
  _$ListingReservationDtoCopyWithImpl(this._self, this._then);

  final ListingReservationDto _self;
  final $Res Function(ListingReservationDto) _then;

/// Create a copy of ListingReservationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? status = null,Object? expiresAt = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingReservationDto].
extension ListingReservationDtoPatterns on ListingReservationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingReservationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingReservationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingReservationDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingReservationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingReservationDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingReservationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'buyer_id')  String buyerId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'expires_at')  String expiresAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingReservationDto() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.status,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'buyer_id')  String buyerId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'expires_at')  String expiresAt, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ListingReservationDto():
return $default(_that.id,_that.listingId,_that.buyerId,_that.status,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'buyer_id')  String buyerId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'expires_at')  String expiresAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingReservationDto() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.status,_that.expiresAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingReservationDto extends ListingReservationDto {
  const _ListingReservationDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'listing_id') required this.listingId, @JsonKey(name: 'buyer_id') required this.buyerId, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'expires_at') required this.expiresAt, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _ListingReservationDto.fromJson(Map<String, dynamic> json) => _$ListingReservationDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'listing_id') final  String listingId;
@override@JsonKey(name: 'buyer_id') final  String buyerId;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'expires_at') final  String expiresAt;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ListingReservationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingReservationDtoCopyWith<_ListingReservationDto> get copyWith => __$ListingReservationDtoCopyWithImpl<_ListingReservationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingReservationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingReservationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,status,expiresAt,createdAt);

@override
String toString() {
  return 'ListingReservationDto(id: $id, listingId: $listingId, buyerId: $buyerId, status: $status, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ListingReservationDtoCopyWith<$Res> implements $ListingReservationDtoCopyWith<$Res> {
  factory _$ListingReservationDtoCopyWith(_ListingReservationDto value, $Res Function(_ListingReservationDto) _then) = __$ListingReservationDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'buyer_id') String buyerId,@JsonKey(name: 'status') String status,@JsonKey(name: 'expires_at') String expiresAt,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ListingReservationDtoCopyWithImpl<$Res>
    implements _$ListingReservationDtoCopyWith<$Res> {
  __$ListingReservationDtoCopyWithImpl(this._self, this._then);

  final _ListingReservationDto _self;
  final $Res Function(_ListingReservationDto) _then;

/// Create a copy of ListingReservationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? status = null,Object? expiresAt = null,Object? createdAt = null,}) {
  return _then(_ListingReservationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
