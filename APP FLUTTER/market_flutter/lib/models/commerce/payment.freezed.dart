// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Payment {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get orderId; String get provider; String? get providerIntentId; PaymentStatus get status;@MoneyConverter() Money get amount; int? get feeCents;@UtcDateTimeConverter() DateTime get occurredAt; Map<String, dynamic> get paymentMethod; String get idempotencyKey;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerIntentId, providerIntentId) || other.providerIntentId == providerIntentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.feeCents, feeCents) || other.feeCents == feeCents)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other.paymentMethod, paymentMethod)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,provider,providerIntentId,status,amount,feeCents,occurredAt,const DeepCollectionEquality().hash(paymentMethod),idempotencyKey);

@override
String toString() {
  return 'Payment(id: $id, orderId: $orderId, provider: $provider, providerIntentId: $providerIntentId, status: $status, amount: $amount, feeCents: $feeCents, occurredAt: $occurredAt, paymentMethod: $paymentMethod, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId, String provider, String? providerIntentId, PaymentStatus status,@MoneyConverter() Money amount, int? feeCents,@UtcDateTimeConverter() DateTime occurredAt, Map<String, dynamic> paymentMethod, String idempotencyKey
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get orderId;$MoneyCopyWith<$Res> get amount;

}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? provider = null,Object? providerIntentId = freezed,Object? status = null,Object? amount = null,Object? feeCents = freezed,Object? occurredAt = null,Object? paymentMethod = null,Object? idempotencyKey = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerIntentId: freezed == providerIntentId ? _self.providerIntentId : providerIntentId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,feeCents: freezed == feeCents ? _self.feeCents : feeCents // ignore: cast_nullable_to_non_nullable
as int?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  String provider,  String? providerIntentId,  PaymentStatus status, @MoneyConverter()  Money amount,  int? feeCents, @UtcDateTimeConverter()  DateTime occurredAt,  Map<String, dynamic> paymentMethod,  String idempotencyKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.orderId,_that.provider,_that.providerIntentId,_that.status,_that.amount,_that.feeCents,_that.occurredAt,_that.paymentMethod,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  String provider,  String? providerIntentId,  PaymentStatus status, @MoneyConverter()  Money amount,  int? feeCents, @UtcDateTimeConverter()  DateTime occurredAt,  Map<String, dynamic> paymentMethod,  String idempotencyKey)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.orderId,_that.provider,_that.providerIntentId,_that.status,_that.amount,_that.feeCents,_that.occurredAt,_that.paymentMethod,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  String provider,  String? providerIntentId,  PaymentStatus status, @MoneyConverter()  Money amount,  int? feeCents, @UtcDateTimeConverter()  DateTime occurredAt,  Map<String, dynamic> paymentMethod,  String idempotencyKey)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.orderId,_that.provider,_that.providerIntentId,_that.status,_that.amount,_that.feeCents,_that.occurredAt,_that.paymentMethod,_that.idempotencyKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payment implements Payment {
  const _Payment({@UuidConverter() required this.id, @UuidConverter() required this.orderId, required this.provider, this.providerIntentId, required this.status, @MoneyConverter() required this.amount, this.feeCents, @UtcDateTimeConverter() required this.occurredAt, final  Map<String, dynamic> paymentMethod = const <String, dynamic>{}, required this.idempotencyKey}): _paymentMethod = paymentMethod;
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid orderId;
@override final  String provider;
@override final  String? providerIntentId;
@override final  PaymentStatus status;
@override@MoneyConverter() final  Money amount;
@override final  int? feeCents;
@override@UtcDateTimeConverter() final  DateTime occurredAt;
 final  Map<String, dynamic> _paymentMethod;
@override@JsonKey() Map<String, dynamic> get paymentMethod {
  if (_paymentMethod is EqualUnmodifiableMapView) return _paymentMethod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_paymentMethod);
}

@override final  String idempotencyKey;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerIntentId, providerIntentId) || other.providerIntentId == providerIntentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.feeCents, feeCents) || other.feeCents == feeCents)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other._paymentMethod, _paymentMethod)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,provider,providerIntentId,status,amount,feeCents,occurredAt,const DeepCollectionEquality().hash(_paymentMethod),idempotencyKey);

@override
String toString() {
  return 'Payment(id: $id, orderId: $orderId, provider: $provider, providerIntentId: $providerIntentId, status: $status, amount: $amount, feeCents: $feeCents, occurredAt: $occurredAt, paymentMethod: $paymentMethod, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId, String provider, String? providerIntentId, PaymentStatus status,@MoneyConverter() Money amount, int? feeCents,@UtcDateTimeConverter() DateTime occurredAt, Map<String, dynamic> paymentMethod, String idempotencyKey
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get orderId;@override $MoneyCopyWith<$Res> get amount;

}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? provider = null,Object? providerIntentId = freezed,Object? status = null,Object? amount = null,Object? feeCents = freezed,Object? occurredAt = null,Object? paymentMethod = null,Object? idempotencyKey = null,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerIntentId: freezed == providerIntentId ? _self.providerIntentId : providerIntentId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,feeCents: freezed == feeCents ? _self.feeCents : feeCents // ignore: cast_nullable_to_non_nullable
as int?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self._paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// @nodoc
mixin _$PaymentDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'provider') String get provider;@JsonKey(name: 'provider_intent_id') String? get providerIntentId;@JsonKey(name: 'status') String get status;@JsonKey(name: 'amount_cents') int get amountCents;@JsonKey(name: 'fee_cents') int? get feeCents;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'payment_method') Map<String, dynamic>? get paymentMethod;@JsonKey(name: 'idempotency_key') String get idempotencyKey;@JsonKey(name: 'occurred_at') String get occurredAt;
/// Create a copy of PaymentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDtoCopyWith<PaymentDto> get copyWith => _$PaymentDtoCopyWithImpl<PaymentDto>(this as PaymentDto, _$identity);

  /// Serializes this PaymentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerIntentId, providerIntentId) || other.providerIntentId == providerIntentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.feeCents, feeCents) || other.feeCents == feeCents)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.paymentMethod, paymentMethod)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,provider,providerIntentId,status,amountCents,feeCents,currency,const DeepCollectionEquality().hash(paymentMethod),idempotencyKey,occurredAt);

@override
String toString() {
  return 'PaymentDto(id: $id, orderId: $orderId, provider: $provider, providerIntentId: $providerIntentId, status: $status, amountCents: $amountCents, feeCents: $feeCents, currency: $currency, paymentMethod: $paymentMethod, idempotencyKey: $idempotencyKey, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class $PaymentDtoCopyWith<$Res>  {
  factory $PaymentDtoCopyWith(PaymentDto value, $Res Function(PaymentDto) _then) = _$PaymentDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'provider') String provider,@JsonKey(name: 'provider_intent_id') String? providerIntentId,@JsonKey(name: 'status') String status,@JsonKey(name: 'amount_cents') int amountCents,@JsonKey(name: 'fee_cents') int? feeCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'payment_method') Map<String, dynamic>? paymentMethod,@JsonKey(name: 'idempotency_key') String idempotencyKey,@JsonKey(name: 'occurred_at') String occurredAt
});




}
/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._self, this._then);

  final PaymentDto _self;
  final $Res Function(PaymentDto) _then;

/// Create a copy of PaymentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? provider = null,Object? providerIntentId = freezed,Object? status = null,Object? amountCents = null,Object? feeCents = freezed,Object? currency = null,Object? paymentMethod = freezed,Object? idempotencyKey = null,Object? occurredAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerIntentId: freezed == providerIntentId ? _self.providerIntentId : providerIntentId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,feeCents: freezed == feeCents ? _self.feeCents : feeCents // ignore: cast_nullable_to_non_nullable
as int?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDto].
extension PaymentDtoPatterns on PaymentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'provider_intent_id')  String? providerIntentId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'amount_cents')  int amountCents, @JsonKey(name: 'fee_cents')  int? feeCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'payment_method')  Map<String, dynamic>? paymentMethod, @JsonKey(name: 'idempotency_key')  String idempotencyKey, @JsonKey(name: 'occurred_at')  String occurredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDto() when $default != null:
return $default(_that.id,_that.orderId,_that.provider,_that.providerIntentId,_that.status,_that.amountCents,_that.feeCents,_that.currency,_that.paymentMethod,_that.idempotencyKey,_that.occurredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'provider_intent_id')  String? providerIntentId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'amount_cents')  int amountCents, @JsonKey(name: 'fee_cents')  int? feeCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'payment_method')  Map<String, dynamic>? paymentMethod, @JsonKey(name: 'idempotency_key')  String idempotencyKey, @JsonKey(name: 'occurred_at')  String occurredAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentDto():
return $default(_that.id,_that.orderId,_that.provider,_that.providerIntentId,_that.status,_that.amountCents,_that.feeCents,_that.currency,_that.paymentMethod,_that.idempotencyKey,_that.occurredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'provider_intent_id')  String? providerIntentId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'amount_cents')  int amountCents, @JsonKey(name: 'fee_cents')  int? feeCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'payment_method')  Map<String, dynamic>? paymentMethod, @JsonKey(name: 'idempotency_key')  String idempotencyKey, @JsonKey(name: 'occurred_at')  String occurredAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDto() when $default != null:
return $default(_that.id,_that.orderId,_that.provider,_that.providerIntentId,_that.status,_that.amountCents,_that.feeCents,_that.currency,_that.paymentMethod,_that.idempotencyKey,_that.occurredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDto extends PaymentDto {
  const _PaymentDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'provider') required this.provider, @JsonKey(name: 'provider_intent_id') this.providerIntentId, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'amount_cents') required this.amountCents, @JsonKey(name: 'fee_cents') this.feeCents, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'payment_method') final  Map<String, dynamic>? paymentMethod, @JsonKey(name: 'idempotency_key') required this.idempotencyKey, @JsonKey(name: 'occurred_at') required this.occurredAt}): _paymentMethod = paymentMethod,super._();
  factory _PaymentDto.fromJson(Map<String, dynamic> json) => _$PaymentDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'provider') final  String provider;
@override@JsonKey(name: 'provider_intent_id') final  String? providerIntentId;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'amount_cents') final  int amountCents;
@override@JsonKey(name: 'fee_cents') final  int? feeCents;
@override@JsonKey(name: 'currency') final  String currency;
 final  Map<String, dynamic>? _paymentMethod;
@override@JsonKey(name: 'payment_method') Map<String, dynamic>? get paymentMethod {
  final value = _paymentMethod;
  if (value == null) return null;
  if (_paymentMethod is EqualUnmodifiableMapView) return _paymentMethod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'idempotency_key') final  String idempotencyKey;
@override@JsonKey(name: 'occurred_at') final  String occurredAt;

/// Create a copy of PaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDtoCopyWith<_PaymentDto> get copyWith => __$PaymentDtoCopyWithImpl<_PaymentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerIntentId, providerIntentId) || other.providerIntentId == providerIntentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.feeCents, feeCents) || other.feeCents == feeCents)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._paymentMethod, _paymentMethod)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,provider,providerIntentId,status,amountCents,feeCents,currency,const DeepCollectionEquality().hash(_paymentMethod),idempotencyKey,occurredAt);

@override
String toString() {
  return 'PaymentDto(id: $id, orderId: $orderId, provider: $provider, providerIntentId: $providerIntentId, status: $status, amountCents: $amountCents, feeCents: $feeCents, currency: $currency, paymentMethod: $paymentMethod, idempotencyKey: $idempotencyKey, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentDtoCopyWith<$Res> implements $PaymentDtoCopyWith<$Res> {
  factory _$PaymentDtoCopyWith(_PaymentDto value, $Res Function(_PaymentDto) _then) = __$PaymentDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'provider') String provider,@JsonKey(name: 'provider_intent_id') String? providerIntentId,@JsonKey(name: 'status') String status,@JsonKey(name: 'amount_cents') int amountCents,@JsonKey(name: 'fee_cents') int? feeCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'payment_method') Map<String, dynamic>? paymentMethod,@JsonKey(name: 'idempotency_key') String idempotencyKey,@JsonKey(name: 'occurred_at') String occurredAt
});




}
/// @nodoc
class __$PaymentDtoCopyWithImpl<$Res>
    implements _$PaymentDtoCopyWith<$Res> {
  __$PaymentDtoCopyWithImpl(this._self, this._then);

  final _PaymentDto _self;
  final $Res Function(_PaymentDto) _then;

/// Create a copy of PaymentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? provider = null,Object? providerIntentId = freezed,Object? status = null,Object? amountCents = null,Object? feeCents = freezed,Object? currency = null,Object? paymentMethod = freezed,Object? idempotencyKey = null,Object? occurredAt = null,}) {
  return _then(_PaymentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerIntentId: freezed == providerIntentId ? _self.providerIntentId : providerIntentId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,feeCents: freezed == feeCents ? _self.feeCents : feeCents // ignore: cast_nullable_to_non_nullable
as int?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: freezed == paymentMethod ? _self._paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
