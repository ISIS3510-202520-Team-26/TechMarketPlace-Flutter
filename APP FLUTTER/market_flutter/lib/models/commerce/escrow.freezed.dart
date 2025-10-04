// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'escrow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Escrow {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get orderId; EscrowStatus get status;@MoneyConverter() Money get heldAmount; String get provider;@UtcDateTimeConverter() DateTime get openedAt;@UtcDateTimeConverter() DateTime? get releasedAt;@UtcDateTimeConverter() DateTime? get refundedAt;
/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EscrowCopyWith<Escrow> get copyWith => _$EscrowCopyWithImpl<Escrow>(this as Escrow, _$identity);

  /// Serializes this Escrow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Escrow&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.heldAmount, heldAmount) || other.heldAmount == heldAmount)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.releasedAt, releasedAt) || other.releasedAt == releasedAt)&&(identical(other.refundedAt, refundedAt) || other.refundedAt == refundedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,status,heldAmount,provider,openedAt,releasedAt,refundedAt);

@override
String toString() {
  return 'Escrow(id: $id, orderId: $orderId, status: $status, heldAmount: $heldAmount, provider: $provider, openedAt: $openedAt, releasedAt: $releasedAt, refundedAt: $refundedAt)';
}


}

/// @nodoc
abstract mixin class $EscrowCopyWith<$Res>  {
  factory $EscrowCopyWith(Escrow value, $Res Function(Escrow) _then) = _$EscrowCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId, EscrowStatus status,@MoneyConverter() Money heldAmount, String provider,@UtcDateTimeConverter() DateTime openedAt,@UtcDateTimeConverter() DateTime? releasedAt,@UtcDateTimeConverter() DateTime? refundedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get orderId;$MoneyCopyWith<$Res> get heldAmount;

}
/// @nodoc
class _$EscrowCopyWithImpl<$Res>
    implements $EscrowCopyWith<$Res> {
  _$EscrowCopyWithImpl(this._self, this._then);

  final Escrow _self;
  final $Res Function(Escrow) _then;

/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? status = null,Object? heldAmount = null,Object? provider = null,Object? openedAt = null,Object? releasedAt = freezed,Object? refundedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EscrowStatus,heldAmount: null == heldAmount ? _self.heldAmount : heldAmount // ignore: cast_nullable_to_non_nullable
as Money,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,releasedAt: freezed == releasedAt ? _self.releasedAt : releasedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,refundedAt: freezed == refundedAt ? _self.refundedAt : refundedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get heldAmount {
  
  return $MoneyCopyWith<$Res>(_self.heldAmount, (value) {
    return _then(_self.copyWith(heldAmount: value));
  });
}
}


/// Adds pattern-matching-related methods to [Escrow].
extension EscrowPatterns on Escrow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Escrow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Escrow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Escrow value)  $default,){
final _that = this;
switch (_that) {
case _Escrow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Escrow value)?  $default,){
final _that = this;
switch (_that) {
case _Escrow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  EscrowStatus status, @MoneyConverter()  Money heldAmount,  String provider, @UtcDateTimeConverter()  DateTime openedAt, @UtcDateTimeConverter()  DateTime? releasedAt, @UtcDateTimeConverter()  DateTime? refundedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Escrow() when $default != null:
return $default(_that.id,_that.orderId,_that.status,_that.heldAmount,_that.provider,_that.openedAt,_that.releasedAt,_that.refundedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  EscrowStatus status, @MoneyConverter()  Money heldAmount,  String provider, @UtcDateTimeConverter()  DateTime openedAt, @UtcDateTimeConverter()  DateTime? releasedAt, @UtcDateTimeConverter()  DateTime? refundedAt)  $default,) {final _that = this;
switch (_that) {
case _Escrow():
return $default(_that.id,_that.orderId,_that.status,_that.heldAmount,_that.provider,_that.openedAt,_that.releasedAt,_that.refundedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  EscrowStatus status, @MoneyConverter()  Money heldAmount,  String provider, @UtcDateTimeConverter()  DateTime openedAt, @UtcDateTimeConverter()  DateTime? releasedAt, @UtcDateTimeConverter()  DateTime? refundedAt)?  $default,) {final _that = this;
switch (_that) {
case _Escrow() when $default != null:
return $default(_that.id,_that.orderId,_that.status,_that.heldAmount,_that.provider,_that.openedAt,_that.releasedAt,_that.refundedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Escrow implements Escrow {
  const _Escrow({@UuidConverter() required this.id, @UuidConverter() required this.orderId, required this.status, @MoneyConverter() required this.heldAmount, required this.provider, @UtcDateTimeConverter() required this.openedAt, @UtcDateTimeConverter() this.releasedAt, @UtcDateTimeConverter() this.refundedAt});
  factory _Escrow.fromJson(Map<String, dynamic> json) => _$EscrowFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid orderId;
@override final  EscrowStatus status;
@override@MoneyConverter() final  Money heldAmount;
@override final  String provider;
@override@UtcDateTimeConverter() final  DateTime openedAt;
@override@UtcDateTimeConverter() final  DateTime? releasedAt;
@override@UtcDateTimeConverter() final  DateTime? refundedAt;

/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EscrowCopyWith<_Escrow> get copyWith => __$EscrowCopyWithImpl<_Escrow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EscrowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Escrow&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.heldAmount, heldAmount) || other.heldAmount == heldAmount)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.releasedAt, releasedAt) || other.releasedAt == releasedAt)&&(identical(other.refundedAt, refundedAt) || other.refundedAt == refundedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,status,heldAmount,provider,openedAt,releasedAt,refundedAt);

@override
String toString() {
  return 'Escrow(id: $id, orderId: $orderId, status: $status, heldAmount: $heldAmount, provider: $provider, openedAt: $openedAt, releasedAt: $releasedAt, refundedAt: $refundedAt)';
}


}

/// @nodoc
abstract mixin class _$EscrowCopyWith<$Res> implements $EscrowCopyWith<$Res> {
  factory _$EscrowCopyWith(_Escrow value, $Res Function(_Escrow) _then) = __$EscrowCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId, EscrowStatus status,@MoneyConverter() Money heldAmount, String provider,@UtcDateTimeConverter() DateTime openedAt,@UtcDateTimeConverter() DateTime? releasedAt,@UtcDateTimeConverter() DateTime? refundedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get orderId;@override $MoneyCopyWith<$Res> get heldAmount;

}
/// @nodoc
class __$EscrowCopyWithImpl<$Res>
    implements _$EscrowCopyWith<$Res> {
  __$EscrowCopyWithImpl(this._self, this._then);

  final _Escrow _self;
  final $Res Function(_Escrow) _then;

/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? status = null,Object? heldAmount = null,Object? provider = null,Object? openedAt = null,Object? releasedAt = freezed,Object? refundedAt = freezed,}) {
  return _then(_Escrow(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EscrowStatus,heldAmount: null == heldAmount ? _self.heldAmount : heldAmount // ignore: cast_nullable_to_non_nullable
as Money,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,releasedAt: freezed == releasedAt ? _self.releasedAt : releasedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,refundedAt: freezed == refundedAt ? _self.refundedAt : refundedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of Escrow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get heldAmount {
  
  return $MoneyCopyWith<$Res>(_self.heldAmount, (value) {
    return _then(_self.copyWith(heldAmount: value));
  });
}
}


/// @nodoc
mixin _$EscrowDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'status') String get status;@JsonKey(name: 'held_amount_cents') int get heldAmountCents;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'provider') String get provider;@JsonKey(name: 'opened_at') String get openedAt;@JsonKey(name: 'released_at') String? get releasedAt;@JsonKey(name: 'refunded_at') String? get refundedAt;
/// Create a copy of EscrowDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EscrowDtoCopyWith<EscrowDto> get copyWith => _$EscrowDtoCopyWithImpl<EscrowDto>(this as EscrowDto, _$identity);

  /// Serializes this EscrowDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EscrowDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.heldAmountCents, heldAmountCents) || other.heldAmountCents == heldAmountCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.releasedAt, releasedAt) || other.releasedAt == releasedAt)&&(identical(other.refundedAt, refundedAt) || other.refundedAt == refundedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,status,heldAmountCents,currency,provider,openedAt,releasedAt,refundedAt);

@override
String toString() {
  return 'EscrowDto(id: $id, orderId: $orderId, status: $status, heldAmountCents: $heldAmountCents, currency: $currency, provider: $provider, openedAt: $openedAt, releasedAt: $releasedAt, refundedAt: $refundedAt)';
}


}

/// @nodoc
abstract mixin class $EscrowDtoCopyWith<$Res>  {
  factory $EscrowDtoCopyWith(EscrowDto value, $Res Function(EscrowDto) _then) = _$EscrowDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'status') String status,@JsonKey(name: 'held_amount_cents') int heldAmountCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'provider') String provider,@JsonKey(name: 'opened_at') String openedAt,@JsonKey(name: 'released_at') String? releasedAt,@JsonKey(name: 'refunded_at') String? refundedAt
});




}
/// @nodoc
class _$EscrowDtoCopyWithImpl<$Res>
    implements $EscrowDtoCopyWith<$Res> {
  _$EscrowDtoCopyWithImpl(this._self, this._then);

  final EscrowDto _self;
  final $Res Function(EscrowDto) _then;

/// Create a copy of EscrowDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? status = null,Object? heldAmountCents = null,Object? currency = null,Object? provider = null,Object? openedAt = null,Object? releasedAt = freezed,Object? refundedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,heldAmountCents: null == heldAmountCents ? _self.heldAmountCents : heldAmountCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as String,releasedAt: freezed == releasedAt ? _self.releasedAt : releasedAt // ignore: cast_nullable_to_non_nullable
as String?,refundedAt: freezed == refundedAt ? _self.refundedAt : refundedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EscrowDto].
extension EscrowDtoPatterns on EscrowDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EscrowDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EscrowDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EscrowDto value)  $default,){
final _that = this;
switch (_that) {
case _EscrowDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EscrowDto value)?  $default,){
final _that = this;
switch (_that) {
case _EscrowDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'held_amount_cents')  int heldAmountCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'opened_at')  String openedAt, @JsonKey(name: 'released_at')  String? releasedAt, @JsonKey(name: 'refunded_at')  String? refundedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EscrowDto() when $default != null:
return $default(_that.id,_that.orderId,_that.status,_that.heldAmountCents,_that.currency,_that.provider,_that.openedAt,_that.releasedAt,_that.refundedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'held_amount_cents')  int heldAmountCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'opened_at')  String openedAt, @JsonKey(name: 'released_at')  String? releasedAt, @JsonKey(name: 'refunded_at')  String? refundedAt)  $default,) {final _that = this;
switch (_that) {
case _EscrowDto():
return $default(_that.id,_that.orderId,_that.status,_that.heldAmountCents,_that.currency,_that.provider,_that.openedAt,_that.releasedAt,_that.refundedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'held_amount_cents')  int heldAmountCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'opened_at')  String openedAt, @JsonKey(name: 'released_at')  String? releasedAt, @JsonKey(name: 'refunded_at')  String? refundedAt)?  $default,) {final _that = this;
switch (_that) {
case _EscrowDto() when $default != null:
return $default(_that.id,_that.orderId,_that.status,_that.heldAmountCents,_that.currency,_that.provider,_that.openedAt,_that.releasedAt,_that.refundedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EscrowDto extends EscrowDto {
  const _EscrowDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'held_amount_cents') required this.heldAmountCents, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'provider') required this.provider, @JsonKey(name: 'opened_at') required this.openedAt, @JsonKey(name: 'released_at') this.releasedAt, @JsonKey(name: 'refunded_at') this.refundedAt}): super._();
  factory _EscrowDto.fromJson(Map<String, dynamic> json) => _$EscrowDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'held_amount_cents') final  int heldAmountCents;
@override@JsonKey(name: 'currency') final  String currency;
@override@JsonKey(name: 'provider') final  String provider;
@override@JsonKey(name: 'opened_at') final  String openedAt;
@override@JsonKey(name: 'released_at') final  String? releasedAt;
@override@JsonKey(name: 'refunded_at') final  String? refundedAt;

/// Create a copy of EscrowDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EscrowDtoCopyWith<_EscrowDto> get copyWith => __$EscrowDtoCopyWithImpl<_EscrowDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EscrowDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EscrowDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.heldAmountCents, heldAmountCents) || other.heldAmountCents == heldAmountCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.releasedAt, releasedAt) || other.releasedAt == releasedAt)&&(identical(other.refundedAt, refundedAt) || other.refundedAt == refundedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,status,heldAmountCents,currency,provider,openedAt,releasedAt,refundedAt);

@override
String toString() {
  return 'EscrowDto(id: $id, orderId: $orderId, status: $status, heldAmountCents: $heldAmountCents, currency: $currency, provider: $provider, openedAt: $openedAt, releasedAt: $releasedAt, refundedAt: $refundedAt)';
}


}

/// @nodoc
abstract mixin class _$EscrowDtoCopyWith<$Res> implements $EscrowDtoCopyWith<$Res> {
  factory _$EscrowDtoCopyWith(_EscrowDto value, $Res Function(_EscrowDto) _then) = __$EscrowDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'status') String status,@JsonKey(name: 'held_amount_cents') int heldAmountCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'provider') String provider,@JsonKey(name: 'opened_at') String openedAt,@JsonKey(name: 'released_at') String? releasedAt,@JsonKey(name: 'refunded_at') String? refundedAt
});




}
/// @nodoc
class __$EscrowDtoCopyWithImpl<$Res>
    implements _$EscrowDtoCopyWith<$Res> {
  __$EscrowDtoCopyWithImpl(this._self, this._then);

  final _EscrowDto _self;
  final $Res Function(_EscrowDto) _then;

/// Create a copy of EscrowDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? status = null,Object? heldAmountCents = null,Object? currency = null,Object? provider = null,Object? openedAt = null,Object? releasedAt = freezed,Object? refundedAt = freezed,}) {
  return _then(_EscrowDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,heldAmountCents: null == heldAmountCents ? _self.heldAmountCents : heldAmountCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as String,releasedAt: freezed == releasedAt ? _self.releasedAt : releasedAt // ignore: cast_nullable_to_non_nullable
as String?,refundedAt: freezed == refundedAt ? _self.refundedAt : refundedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
