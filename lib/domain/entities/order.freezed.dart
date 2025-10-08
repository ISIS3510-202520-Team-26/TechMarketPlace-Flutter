// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutOrder {

 String get id; String get listingId; String get buyerId; Money get amount; String get status;
/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutOrderCopyWith<CheckoutOrder> get copyWith => _$CheckoutOrderCopyWithImpl<CheckoutOrder>(this as CheckoutOrder, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,amount,status);

@override
String toString() {
  return 'CheckoutOrder(id: $id, listingId: $listingId, buyerId: $buyerId, amount: $amount, status: $status)';
}


}

/// @nodoc
abstract mixin class $CheckoutOrderCopyWith<$Res>  {
  factory $CheckoutOrderCopyWith(CheckoutOrder value, $Res Function(CheckoutOrder) _then) = _$CheckoutOrderCopyWithImpl;
@useResult
$Res call({
 String id, String listingId, String buyerId, Money amount, String status
});


$MoneyCopyWith<$Res> get amount;

}
/// @nodoc
class _$CheckoutOrderCopyWithImpl<$Res>
    implements $CheckoutOrderCopyWith<$Res> {
  _$CheckoutOrderCopyWithImpl(this._self, this._then);

  final CheckoutOrder _self;
  final $Res Function(CheckoutOrder) _then;

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? amount = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutOrder].
extension CheckoutOrderPatterns on CheckoutOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutOrder value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutOrder value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String listingId,  String buyerId,  Money amount,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.amount,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String listingId,  String buyerId,  Money amount,  String status)  $default,) {final _that = this;
switch (_that) {
case _CheckoutOrder():
return $default(_that.id,_that.listingId,_that.buyerId,_that.amount,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String listingId,  String buyerId,  Money amount,  String status)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutOrder() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.amount,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutOrder extends CheckoutOrder {
  const _CheckoutOrder({required this.id, required this.listingId, required this.buyerId, required this.amount, required this.status}): super._();
  

@override final  String id;
@override final  String listingId;
@override final  String buyerId;
@override final  Money amount;
@override final  String status;

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutOrderCopyWith<_CheckoutOrder> get copyWith => __$CheckoutOrderCopyWithImpl<_CheckoutOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,amount,status);

@override
String toString() {
  return 'CheckoutOrder(id: $id, listingId: $listingId, buyerId: $buyerId, amount: $amount, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CheckoutOrderCopyWith<$Res> implements $CheckoutOrderCopyWith<$Res> {
  factory _$CheckoutOrderCopyWith(_CheckoutOrder value, $Res Function(_CheckoutOrder) _then) = __$CheckoutOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String listingId, String buyerId, Money amount, String status
});


@override $MoneyCopyWith<$Res> get amount;

}
/// @nodoc
class __$CheckoutOrderCopyWithImpl<$Res>
    implements _$CheckoutOrderCopyWith<$Res> {
  __$CheckoutOrderCopyWithImpl(this._self, this._then);

  final _CheckoutOrder _self;
  final $Res Function(_CheckoutOrder) _then;

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? amount = null,Object? status = null,}) {
  return _then(_CheckoutOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CheckoutOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}

// dart format on
