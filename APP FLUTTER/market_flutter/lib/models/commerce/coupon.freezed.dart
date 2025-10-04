// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Coupon {

@UuidConverter() Uuid get id; String get code; String? get description; DiscountType get discountType; int? get amountCents; String? get currency; Map<String, dynamic> get constraints; CouponStatus get status;@UtcDateTimeConverter() DateTime get validFrom;@UtcDateTimeConverter() DateTime get validTo; int? get maxUses; int? get maxUsesPerUser;@UuidConverter() Uuid? get createdBy;
/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponCopyWith<Coupon> get copyWith => _$CouponCopyWithImpl<Coupon>(this as Coupon, _$identity);

  /// Serializes this Coupon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coupon&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.constraints, constraints)&&(identical(other.status, status) || other.status == status)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.maxUses, maxUses) || other.maxUses == maxUses)&&(identical(other.maxUsesPerUser, maxUsesPerUser) || other.maxUsesPerUser == maxUsesPerUser)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,description,discountType,amountCents,currency,const DeepCollectionEquality().hash(constraints),status,validFrom,validTo,maxUses,maxUsesPerUser,createdBy);

@override
String toString() {
  return 'Coupon(id: $id, code: $code, description: $description, discountType: $discountType, amountCents: $amountCents, currency: $currency, constraints: $constraints, status: $status, validFrom: $validFrom, validTo: $validTo, maxUses: $maxUses, maxUsesPerUser: $maxUsesPerUser, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $CouponCopyWith<$Res>  {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) _then) = _$CouponCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id, String code, String? description, DiscountType discountType, int? amountCents, String? currency, Map<String, dynamic> constraints, CouponStatus status,@UtcDateTimeConverter() DateTime validFrom,@UtcDateTimeConverter() DateTime validTo, int? maxUses, int? maxUsesPerUser,@UuidConverter() Uuid? createdBy
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$CouponCopyWithImpl<$Res>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._self, this._then);

  final Coupon _self;
  final $Res Function(Coupon) _then;

/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? description = freezed,Object? discountType = null,Object? amountCents = freezed,Object? currency = freezed,Object? constraints = null,Object? status = null,Object? validFrom = null,Object? validTo = null,Object? maxUses = freezed,Object? maxUsesPerUser = freezed,Object? createdBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as DiscountType,amountCents: freezed == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,constraints: null == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CouponStatus,validFrom: null == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime,validTo: null == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime,maxUses: freezed == maxUses ? _self.maxUses : maxUses // ignore: cast_nullable_to_non_nullable
as int?,maxUsesPerUser: freezed == maxUsesPerUser ? _self.maxUsesPerUser : maxUsesPerUser // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as Uuid?,
  ));
}
/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Coupon].
extension CouponPatterns on Coupon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coupon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coupon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coupon value)  $default,){
final _that = this;
switch (_that) {
case _Coupon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coupon value)?  $default,){
final _that = this;
switch (_that) {
case _Coupon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id,  String code,  String? description,  DiscountType discountType,  int? amountCents,  String? currency,  Map<String, dynamic> constraints,  CouponStatus status, @UtcDateTimeConverter()  DateTime validFrom, @UtcDateTimeConverter()  DateTime validTo,  int? maxUses,  int? maxUsesPerUser, @UuidConverter()  Uuid? createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coupon() when $default != null:
return $default(_that.id,_that.code,_that.description,_that.discountType,_that.amountCents,_that.currency,_that.constraints,_that.status,_that.validFrom,_that.validTo,_that.maxUses,_that.maxUsesPerUser,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id,  String code,  String? description,  DiscountType discountType,  int? amountCents,  String? currency,  Map<String, dynamic> constraints,  CouponStatus status, @UtcDateTimeConverter()  DateTime validFrom, @UtcDateTimeConverter()  DateTime validTo,  int? maxUses,  int? maxUsesPerUser, @UuidConverter()  Uuid? createdBy)  $default,) {final _that = this;
switch (_that) {
case _Coupon():
return $default(_that.id,_that.code,_that.description,_that.discountType,_that.amountCents,_that.currency,_that.constraints,_that.status,_that.validFrom,_that.validTo,_that.maxUses,_that.maxUsesPerUser,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id,  String code,  String? description,  DiscountType discountType,  int? amountCents,  String? currency,  Map<String, dynamic> constraints,  CouponStatus status, @UtcDateTimeConverter()  DateTime validFrom, @UtcDateTimeConverter()  DateTime validTo,  int? maxUses,  int? maxUsesPerUser, @UuidConverter()  Uuid? createdBy)?  $default,) {final _that = this;
switch (_that) {
case _Coupon() when $default != null:
return $default(_that.id,_that.code,_that.description,_that.discountType,_that.amountCents,_that.currency,_that.constraints,_that.status,_that.validFrom,_that.validTo,_that.maxUses,_that.maxUsesPerUser,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coupon implements Coupon {
  const _Coupon({@UuidConverter() required this.id, required this.code, this.description, required this.discountType, this.amountCents, this.currency, final  Map<String, dynamic> constraints = const <String, dynamic>{}, required this.status, @UtcDateTimeConverter() required this.validFrom, @UtcDateTimeConverter() required this.validTo, this.maxUses, this.maxUsesPerUser, @UuidConverter() this.createdBy}): _constraints = constraints;
  factory _Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);

@override@UuidConverter() final  Uuid id;
@override final  String code;
@override final  String? description;
@override final  DiscountType discountType;
@override final  int? amountCents;
@override final  String? currency;
 final  Map<String, dynamic> _constraints;
@override@JsonKey() Map<String, dynamic> get constraints {
  if (_constraints is EqualUnmodifiableMapView) return _constraints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_constraints);
}

@override final  CouponStatus status;
@override@UtcDateTimeConverter() final  DateTime validFrom;
@override@UtcDateTimeConverter() final  DateTime validTo;
@override final  int? maxUses;
@override final  int? maxUsesPerUser;
@override@UuidConverter() final  Uuid? createdBy;

/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponCopyWith<_Coupon> get copyWith => __$CouponCopyWithImpl<_Coupon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coupon&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._constraints, _constraints)&&(identical(other.status, status) || other.status == status)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.maxUses, maxUses) || other.maxUses == maxUses)&&(identical(other.maxUsesPerUser, maxUsesPerUser) || other.maxUsesPerUser == maxUsesPerUser)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,description,discountType,amountCents,currency,const DeepCollectionEquality().hash(_constraints),status,validFrom,validTo,maxUses,maxUsesPerUser,createdBy);

@override
String toString() {
  return 'Coupon(id: $id, code: $code, description: $description, discountType: $discountType, amountCents: $amountCents, currency: $currency, constraints: $constraints, status: $status, validFrom: $validFrom, validTo: $validTo, maxUses: $maxUses, maxUsesPerUser: $maxUsesPerUser, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponCopyWith(_Coupon value, $Res Function(_Coupon) _then) = __$CouponCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id, String code, String? description, DiscountType discountType, int? amountCents, String? currency, Map<String, dynamic> constraints, CouponStatus status,@UtcDateTimeConverter() DateTime validFrom,@UtcDateTimeConverter() DateTime validTo, int? maxUses, int? maxUsesPerUser,@UuidConverter() Uuid? createdBy
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$CouponCopyWithImpl<$Res>
    implements _$CouponCopyWith<$Res> {
  __$CouponCopyWithImpl(this._self, this._then);

  final _Coupon _self;
  final $Res Function(_Coupon) _then;

/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? description = freezed,Object? discountType = null,Object? amountCents = freezed,Object? currency = freezed,Object? constraints = null,Object? status = null,Object? validFrom = null,Object? validTo = null,Object? maxUses = freezed,Object? maxUsesPerUser = freezed,Object? createdBy = freezed,}) {
  return _then(_Coupon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as DiscountType,amountCents: freezed == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,constraints: null == constraints ? _self._constraints : constraints // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CouponStatus,validFrom: null == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime,validTo: null == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime,maxUses: freezed == maxUses ? _self.maxUses : maxUses // ignore: cast_nullable_to_non_nullable
as int?,maxUsesPerUser: freezed == maxUsesPerUser ? _self.maxUsesPerUser : maxUsesPerUser // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as Uuid?,
  ));
}

/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Coupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// @nodoc
mixin _$CouponDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'code') String get code;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'discount_type') String get discountType;@JsonKey(name: 'amount_cents') int? get amountCents;@JsonKey(name: 'currency') String? get currency;@JsonKey(name: 'constraints') Map<String, dynamic>? get constraints;@JsonKey(name: 'status') String get status;@JsonKey(name: 'valid_from') String get validFrom;@JsonKey(name: 'valid_to') String get validTo;@JsonKey(name: 'max_uses') int? get maxUses;@JsonKey(name: 'max_uses_per_user') int? get maxUsesPerUser;@JsonKey(name: 'created_by') String? get createdBy;
/// Create a copy of CouponDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponDtoCopyWith<CouponDto> get copyWith => _$CouponDtoCopyWithImpl<CouponDto>(this as CouponDto, _$identity);

  /// Serializes this CouponDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponDto&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.constraints, constraints)&&(identical(other.status, status) || other.status == status)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.maxUses, maxUses) || other.maxUses == maxUses)&&(identical(other.maxUsesPerUser, maxUsesPerUser) || other.maxUsesPerUser == maxUsesPerUser)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,description,discountType,amountCents,currency,const DeepCollectionEquality().hash(constraints),status,validFrom,validTo,maxUses,maxUsesPerUser,createdBy);

@override
String toString() {
  return 'CouponDto(id: $id, code: $code, description: $description, discountType: $discountType, amountCents: $amountCents, currency: $currency, constraints: $constraints, status: $status, validFrom: $validFrom, validTo: $validTo, maxUses: $maxUses, maxUsesPerUser: $maxUsesPerUser, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $CouponDtoCopyWith<$Res>  {
  factory $CouponDtoCopyWith(CouponDto value, $Res Function(CouponDto) _then) = _$CouponDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'code') String code,@JsonKey(name: 'description') String? description,@JsonKey(name: 'discount_type') String discountType,@JsonKey(name: 'amount_cents') int? amountCents,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'constraints') Map<String, dynamic>? constraints,@JsonKey(name: 'status') String status,@JsonKey(name: 'valid_from') String validFrom,@JsonKey(name: 'valid_to') String validTo,@JsonKey(name: 'max_uses') int? maxUses,@JsonKey(name: 'max_uses_per_user') int? maxUsesPerUser,@JsonKey(name: 'created_by') String? createdBy
});




}
/// @nodoc
class _$CouponDtoCopyWithImpl<$Res>
    implements $CouponDtoCopyWith<$Res> {
  _$CouponDtoCopyWithImpl(this._self, this._then);

  final CouponDto _self;
  final $Res Function(CouponDto) _then;

/// Create a copy of CouponDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? description = freezed,Object? discountType = null,Object? amountCents = freezed,Object? currency = freezed,Object? constraints = freezed,Object? status = null,Object? validFrom = null,Object? validTo = null,Object? maxUses = freezed,Object? maxUsesPerUser = freezed,Object? createdBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String,amountCents: freezed == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,constraints: freezed == constraints ? _self.constraints : constraints // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,validFrom: null == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String,validTo: null == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as String,maxUses: freezed == maxUses ? _self.maxUses : maxUses // ignore: cast_nullable_to_non_nullable
as int?,maxUsesPerUser: freezed == maxUsesPerUser ? _self.maxUsesPerUser : maxUsesPerUser // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CouponDto].
extension CouponDtoPatterns on CouponDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CouponDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CouponDto value)  $default,){
final _that = this;
switch (_that) {
case _CouponDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CouponDto value)?  $default,){
final _that = this;
switch (_that) {
case _CouponDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'code')  String code, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'discount_type')  String discountType, @JsonKey(name: 'amount_cents')  int? amountCents, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'constraints')  Map<String, dynamic>? constraints, @JsonKey(name: 'status')  String status, @JsonKey(name: 'valid_from')  String validFrom, @JsonKey(name: 'valid_to')  String validTo, @JsonKey(name: 'max_uses')  int? maxUses, @JsonKey(name: 'max_uses_per_user')  int? maxUsesPerUser, @JsonKey(name: 'created_by')  String? createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponDto() when $default != null:
return $default(_that.id,_that.code,_that.description,_that.discountType,_that.amountCents,_that.currency,_that.constraints,_that.status,_that.validFrom,_that.validTo,_that.maxUses,_that.maxUsesPerUser,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'code')  String code, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'discount_type')  String discountType, @JsonKey(name: 'amount_cents')  int? amountCents, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'constraints')  Map<String, dynamic>? constraints, @JsonKey(name: 'status')  String status, @JsonKey(name: 'valid_from')  String validFrom, @JsonKey(name: 'valid_to')  String validTo, @JsonKey(name: 'max_uses')  int? maxUses, @JsonKey(name: 'max_uses_per_user')  int? maxUsesPerUser, @JsonKey(name: 'created_by')  String? createdBy)  $default,) {final _that = this;
switch (_that) {
case _CouponDto():
return $default(_that.id,_that.code,_that.description,_that.discountType,_that.amountCents,_that.currency,_that.constraints,_that.status,_that.validFrom,_that.validTo,_that.maxUses,_that.maxUsesPerUser,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'code')  String code, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'discount_type')  String discountType, @JsonKey(name: 'amount_cents')  int? amountCents, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'constraints')  Map<String, dynamic>? constraints, @JsonKey(name: 'status')  String status, @JsonKey(name: 'valid_from')  String validFrom, @JsonKey(name: 'valid_to')  String validTo, @JsonKey(name: 'max_uses')  int? maxUses, @JsonKey(name: 'max_uses_per_user')  int? maxUsesPerUser, @JsonKey(name: 'created_by')  String? createdBy)?  $default,) {final _that = this;
switch (_that) {
case _CouponDto() when $default != null:
return $default(_that.id,_that.code,_that.description,_that.discountType,_that.amountCents,_that.currency,_that.constraints,_that.status,_that.validFrom,_that.validTo,_that.maxUses,_that.maxUsesPerUser,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CouponDto extends CouponDto {
  const _CouponDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'code') required this.code, @JsonKey(name: 'description') this.description, @JsonKey(name: 'discount_type') required this.discountType, @JsonKey(name: 'amount_cents') this.amountCents, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'constraints') final  Map<String, dynamic>? constraints, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'valid_from') required this.validFrom, @JsonKey(name: 'valid_to') required this.validTo, @JsonKey(name: 'max_uses') this.maxUses, @JsonKey(name: 'max_uses_per_user') this.maxUsesPerUser, @JsonKey(name: 'created_by') this.createdBy}): _constraints = constraints,super._();
  factory _CouponDto.fromJson(Map<String, dynamic> json) => _$CouponDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'code') final  String code;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'discount_type') final  String discountType;
@override@JsonKey(name: 'amount_cents') final  int? amountCents;
@override@JsonKey(name: 'currency') final  String? currency;
 final  Map<String, dynamic>? _constraints;
@override@JsonKey(name: 'constraints') Map<String, dynamic>? get constraints {
  final value = _constraints;
  if (value == null) return null;
  if (_constraints is EqualUnmodifiableMapView) return _constraints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'valid_from') final  String validFrom;
@override@JsonKey(name: 'valid_to') final  String validTo;
@override@JsonKey(name: 'max_uses') final  int? maxUses;
@override@JsonKey(name: 'max_uses_per_user') final  int? maxUsesPerUser;
@override@JsonKey(name: 'created_by') final  String? createdBy;

/// Create a copy of CouponDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponDtoCopyWith<_CouponDto> get copyWith => __$CouponDtoCopyWithImpl<_CouponDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponDto&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._constraints, _constraints)&&(identical(other.status, status) || other.status == status)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.maxUses, maxUses) || other.maxUses == maxUses)&&(identical(other.maxUsesPerUser, maxUsesPerUser) || other.maxUsesPerUser == maxUsesPerUser)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,description,discountType,amountCents,currency,const DeepCollectionEquality().hash(_constraints),status,validFrom,validTo,maxUses,maxUsesPerUser,createdBy);

@override
String toString() {
  return 'CouponDto(id: $id, code: $code, description: $description, discountType: $discountType, amountCents: $amountCents, currency: $currency, constraints: $constraints, status: $status, validFrom: $validFrom, validTo: $validTo, maxUses: $maxUses, maxUsesPerUser: $maxUsesPerUser, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$CouponDtoCopyWith<$Res> implements $CouponDtoCopyWith<$Res> {
  factory _$CouponDtoCopyWith(_CouponDto value, $Res Function(_CouponDto) _then) = __$CouponDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'code') String code,@JsonKey(name: 'description') String? description,@JsonKey(name: 'discount_type') String discountType,@JsonKey(name: 'amount_cents') int? amountCents,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'constraints') Map<String, dynamic>? constraints,@JsonKey(name: 'status') String status,@JsonKey(name: 'valid_from') String validFrom,@JsonKey(name: 'valid_to') String validTo,@JsonKey(name: 'max_uses') int? maxUses,@JsonKey(name: 'max_uses_per_user') int? maxUsesPerUser,@JsonKey(name: 'created_by') String? createdBy
});




}
/// @nodoc
class __$CouponDtoCopyWithImpl<$Res>
    implements _$CouponDtoCopyWith<$Res> {
  __$CouponDtoCopyWithImpl(this._self, this._then);

  final _CouponDto _self;
  final $Res Function(_CouponDto) _then;

/// Create a copy of CouponDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? description = freezed,Object? discountType = null,Object? amountCents = freezed,Object? currency = freezed,Object? constraints = freezed,Object? status = null,Object? validFrom = null,Object? validTo = null,Object? maxUses = freezed,Object? maxUsesPerUser = freezed,Object? createdBy = freezed,}) {
  return _then(_CouponDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String,amountCents: freezed == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,constraints: freezed == constraints ? _self._constraints : constraints // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,validFrom: null == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String,validTo: null == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as String,maxUses: freezed == maxUses ? _self.maxUses : maxUses // ignore: cast_nullable_to_non_nullable
as int?,maxUsesPerUser: freezed == maxUsesPerUser ? _self.maxUsesPerUser : maxUsesPerUser // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
