// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderCoupon {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get orderId;@UuidConverter() Uuid get couponId; int get amountAppliedCents;
/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCouponCopyWith<OrderCoupon> get copyWith => _$OrderCouponCopyWithImpl<OrderCoupon>(this as OrderCoupon, _$identity);

  /// Serializes this OrderCoupon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCoupon&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.amountAppliedCents, amountAppliedCents) || other.amountAppliedCents == amountAppliedCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,couponId,amountAppliedCents);

@override
String toString() {
  return 'OrderCoupon(id: $id, orderId: $orderId, couponId: $couponId, amountAppliedCents: $amountAppliedCents)';
}


}

/// @nodoc
abstract mixin class $OrderCouponCopyWith<$Res>  {
  factory $OrderCouponCopyWith(OrderCoupon value, $Res Function(OrderCoupon) _then) = _$OrderCouponCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId,@UuidConverter() Uuid couponId, int amountAppliedCents
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get orderId;$UuidCopyWith<$Res> get couponId;

}
/// @nodoc
class _$OrderCouponCopyWithImpl<$Res>
    implements $OrderCouponCopyWith<$Res> {
  _$OrderCouponCopyWithImpl(this._self, this._then);

  final OrderCoupon _self;
  final $Res Function(OrderCoupon) _then;

/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? couponId = null,Object? amountAppliedCents = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,couponId: null == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as Uuid,amountAppliedCents: null == amountAppliedCents ? _self.amountAppliedCents : amountAppliedCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get couponId {
  
  return $UuidCopyWith<$Res>(_self.couponId, (value) {
    return _then(_self.copyWith(couponId: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderCoupon].
extension OrderCouponPatterns on OrderCoupon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCoupon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCoupon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCoupon value)  $default,){
final _that = this;
switch (_that) {
case _OrderCoupon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCoupon value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCoupon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId, @UuidConverter()  Uuid couponId,  int amountAppliedCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCoupon() when $default != null:
return $default(_that.id,_that.orderId,_that.couponId,_that.amountAppliedCents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId, @UuidConverter()  Uuid couponId,  int amountAppliedCents)  $default,) {final _that = this;
switch (_that) {
case _OrderCoupon():
return $default(_that.id,_that.orderId,_that.couponId,_that.amountAppliedCents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId, @UuidConverter()  Uuid couponId,  int amountAppliedCents)?  $default,) {final _that = this;
switch (_that) {
case _OrderCoupon() when $default != null:
return $default(_that.id,_that.orderId,_that.couponId,_that.amountAppliedCents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderCoupon implements OrderCoupon {
  const _OrderCoupon({@UuidConverter() required this.id, @UuidConverter() required this.orderId, @UuidConverter() required this.couponId, required this.amountAppliedCents});
  factory _OrderCoupon.fromJson(Map<String, dynamic> json) => _$OrderCouponFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid orderId;
@override@UuidConverter() final  Uuid couponId;
@override final  int amountAppliedCents;

/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCouponCopyWith<_OrderCoupon> get copyWith => __$OrderCouponCopyWithImpl<_OrderCoupon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderCouponToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCoupon&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.amountAppliedCents, amountAppliedCents) || other.amountAppliedCents == amountAppliedCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,couponId,amountAppliedCents);

@override
String toString() {
  return 'OrderCoupon(id: $id, orderId: $orderId, couponId: $couponId, amountAppliedCents: $amountAppliedCents)';
}


}

/// @nodoc
abstract mixin class _$OrderCouponCopyWith<$Res> implements $OrderCouponCopyWith<$Res> {
  factory _$OrderCouponCopyWith(_OrderCoupon value, $Res Function(_OrderCoupon) _then) = __$OrderCouponCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId,@UuidConverter() Uuid couponId, int amountAppliedCents
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get orderId;@override $UuidCopyWith<$Res> get couponId;

}
/// @nodoc
class __$OrderCouponCopyWithImpl<$Res>
    implements _$OrderCouponCopyWith<$Res> {
  __$OrderCouponCopyWithImpl(this._self, this._then);

  final _OrderCoupon _self;
  final $Res Function(_OrderCoupon) _then;

/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? couponId = null,Object? amountAppliedCents = null,}) {
  return _then(_OrderCoupon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,couponId: null == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as Uuid,amountAppliedCents: null == amountAppliedCents ? _self.amountAppliedCents : amountAppliedCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of OrderCoupon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get couponId {
  
  return $UuidCopyWith<$Res>(_self.couponId, (value) {
    return _then(_self.copyWith(couponId: value));
  });
}
}


/// @nodoc
mixin _$OrderCouponDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'coupon_id') String get couponId;@JsonKey(name: 'amount_applied_cents') int get amountAppliedCents;
/// Create a copy of OrderCouponDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCouponDtoCopyWith<OrderCouponDto> get copyWith => _$OrderCouponDtoCopyWithImpl<OrderCouponDto>(this as OrderCouponDto, _$identity);

  /// Serializes this OrderCouponDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCouponDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.amountAppliedCents, amountAppliedCents) || other.amountAppliedCents == amountAppliedCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,couponId,amountAppliedCents);

@override
String toString() {
  return 'OrderCouponDto(id: $id, orderId: $orderId, couponId: $couponId, amountAppliedCents: $amountAppliedCents)';
}


}

/// @nodoc
abstract mixin class $OrderCouponDtoCopyWith<$Res>  {
  factory $OrderCouponDtoCopyWith(OrderCouponDto value, $Res Function(OrderCouponDto) _then) = _$OrderCouponDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'coupon_id') String couponId,@JsonKey(name: 'amount_applied_cents') int amountAppliedCents
});




}
/// @nodoc
class _$OrderCouponDtoCopyWithImpl<$Res>
    implements $OrderCouponDtoCopyWith<$Res> {
  _$OrderCouponDtoCopyWithImpl(this._self, this._then);

  final OrderCouponDto _self;
  final $Res Function(OrderCouponDto) _then;

/// Create a copy of OrderCouponDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? couponId = null,Object? amountAppliedCents = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,couponId: null == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as String,amountAppliedCents: null == amountAppliedCents ? _self.amountAppliedCents : amountAppliedCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderCouponDto].
extension OrderCouponDtoPatterns on OrderCouponDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCouponDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCouponDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCouponDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderCouponDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCouponDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCouponDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'coupon_id')  String couponId, @JsonKey(name: 'amount_applied_cents')  int amountAppliedCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCouponDto() when $default != null:
return $default(_that.id,_that.orderId,_that.couponId,_that.amountAppliedCents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'coupon_id')  String couponId, @JsonKey(name: 'amount_applied_cents')  int amountAppliedCents)  $default,) {final _that = this;
switch (_that) {
case _OrderCouponDto():
return $default(_that.id,_that.orderId,_that.couponId,_that.amountAppliedCents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'coupon_id')  String couponId, @JsonKey(name: 'amount_applied_cents')  int amountAppliedCents)?  $default,) {final _that = this;
switch (_that) {
case _OrderCouponDto() when $default != null:
return $default(_that.id,_that.orderId,_that.couponId,_that.amountAppliedCents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderCouponDto extends OrderCouponDto {
  const _OrderCouponDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'coupon_id') required this.couponId, @JsonKey(name: 'amount_applied_cents') required this.amountAppliedCents}): super._();
  factory _OrderCouponDto.fromJson(Map<String, dynamic> json) => _$OrderCouponDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'coupon_id') final  String couponId;
@override@JsonKey(name: 'amount_applied_cents') final  int amountAppliedCents;

/// Create a copy of OrderCouponDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCouponDtoCopyWith<_OrderCouponDto> get copyWith => __$OrderCouponDtoCopyWithImpl<_OrderCouponDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderCouponDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCouponDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.amountAppliedCents, amountAppliedCents) || other.amountAppliedCents == amountAppliedCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,couponId,amountAppliedCents);

@override
String toString() {
  return 'OrderCouponDto(id: $id, orderId: $orderId, couponId: $couponId, amountAppliedCents: $amountAppliedCents)';
}


}

/// @nodoc
abstract mixin class _$OrderCouponDtoCopyWith<$Res> implements $OrderCouponDtoCopyWith<$Res> {
  factory _$OrderCouponDtoCopyWith(_OrderCouponDto value, $Res Function(_OrderCouponDto) _then) = __$OrderCouponDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'coupon_id') String couponId,@JsonKey(name: 'amount_applied_cents') int amountAppliedCents
});




}
/// @nodoc
class __$OrderCouponDtoCopyWithImpl<$Res>
    implements _$OrderCouponDtoCopyWith<$Res> {
  __$OrderCouponDtoCopyWithImpl(this._self, this._then);

  final _OrderCouponDto _self;
  final $Res Function(_OrderCouponDto) _then;

/// Create a copy of OrderCouponDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? couponId = null,Object? amountAppliedCents = null,}) {
  return _then(_OrderCouponDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,couponId: null == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as String,amountAppliedCents: null == amountAppliedCents ? _self.amountAppliedCents : amountAppliedCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
