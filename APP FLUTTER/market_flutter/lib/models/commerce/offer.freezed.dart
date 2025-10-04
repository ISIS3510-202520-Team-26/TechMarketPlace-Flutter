// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Offer {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get listingId;@UuidConverter() Uuid get buyerId;@UuidConverter() Uuid? get chatId;@MoneyConverter() Money get amount; OfferStatus get status;@UuidConverter() Uuid? get counterOf;@UtcDateTimeConverter() DateTime? get expiresAt;@UtcDateTimeConverter() DateTime get createdAt;
/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferCopyWith<Offer> get copyWith => _$OfferCopyWithImpl<Offer>(this as Offer, _$identity);

  /// Serializes this Offer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Offer&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.counterOf, counterOf) || other.counterOf == counterOf)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,chatId,amount,status,counterOf,expiresAt,createdAt);

@override
String toString() {
  return 'Offer(id: $id, listingId: $listingId, buyerId: $buyerId, chatId: $chatId, amount: $amount, status: $status, counterOf: $counterOf, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OfferCopyWith<$Res>  {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) _then) = _$OfferCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId,@UuidConverter() Uuid buyerId,@UuidConverter() Uuid? chatId,@MoneyConverter() Money amount, OfferStatus status,@UuidConverter() Uuid? counterOf,@UtcDateTimeConverter() DateTime? expiresAt,@UtcDateTimeConverter() DateTime createdAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get listingId;$UuidCopyWith<$Res> get buyerId;$UuidCopyWith<$Res>? get chatId;$MoneyCopyWith<$Res> get amount;$UuidCopyWith<$Res>? get counterOf;

}
/// @nodoc
class _$OfferCopyWithImpl<$Res>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._self, this._then);

  final Offer _self;
  final $Res Function(Offer) _then;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? chatId = freezed,Object? amount = null,Object? status = null,Object? counterOf = freezed,Object? expiresAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as Uuid,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OfferStatus,counterOf: freezed == counterOf ? _self.counterOf : counterOf // ignore: cast_nullable_to_non_nullable
as Uuid?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get buyerId {
  
  return $UuidCopyWith<$Res>(_self.buyerId, (value) {
    return _then(_self.copyWith(buyerId: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get chatId {
    if (_self.chatId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.chatId!, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get counterOf {
    if (_self.counterOf == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.counterOf!, (value) {
    return _then(_self.copyWith(counterOf: value));
  });
}
}


/// Adds pattern-matching-related methods to [Offer].
extension OfferPatterns on Offer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Offer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Offer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Offer value)  $default,){
final _that = this;
switch (_that) {
case _Offer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Offer value)?  $default,){
final _that = this;
switch (_that) {
case _Offer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @UuidConverter()  Uuid buyerId, @UuidConverter()  Uuid? chatId, @MoneyConverter()  Money amount,  OfferStatus status, @UuidConverter()  Uuid? counterOf, @UtcDateTimeConverter()  DateTime? expiresAt, @UtcDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.chatId,_that.amount,_that.status,_that.counterOf,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @UuidConverter()  Uuid buyerId, @UuidConverter()  Uuid? chatId, @MoneyConverter()  Money amount,  OfferStatus status, @UuidConverter()  Uuid? counterOf, @UtcDateTimeConverter()  DateTime? expiresAt, @UtcDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Offer():
return $default(_that.id,_that.listingId,_that.buyerId,_that.chatId,_that.amount,_that.status,_that.counterOf,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @UuidConverter()  Uuid buyerId, @UuidConverter()  Uuid? chatId, @MoneyConverter()  Money amount,  OfferStatus status, @UuidConverter()  Uuid? counterOf, @UtcDateTimeConverter()  DateTime? expiresAt, @UtcDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.chatId,_that.amount,_that.status,_that.counterOf,_that.expiresAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Offer implements Offer {
  const _Offer({@UuidConverter() required this.id, @UuidConverter() required this.listingId, @UuidConverter() required this.buyerId, @UuidConverter() this.chatId, @MoneyConverter() required this.amount, this.status = OfferStatus.proposed, @UuidConverter() this.counterOf, @UtcDateTimeConverter() this.expiresAt, @UtcDateTimeConverter() required this.createdAt});
  factory _Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid listingId;
@override@UuidConverter() final  Uuid buyerId;
@override@UuidConverter() final  Uuid? chatId;
@override@MoneyConverter() final  Money amount;
@override@JsonKey() final  OfferStatus status;
@override@UuidConverter() final  Uuid? counterOf;
@override@UtcDateTimeConverter() final  DateTime? expiresAt;
@override@UtcDateTimeConverter() final  DateTime createdAt;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferCopyWith<_Offer> get copyWith => __$OfferCopyWithImpl<_Offer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Offer&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.counterOf, counterOf) || other.counterOf == counterOf)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,chatId,amount,status,counterOf,expiresAt,createdAt);

@override
String toString() {
  return 'Offer(id: $id, listingId: $listingId, buyerId: $buyerId, chatId: $chatId, amount: $amount, status: $status, counterOf: $counterOf, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$OfferCopyWith(_Offer value, $Res Function(_Offer) _then) = __$OfferCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId,@UuidConverter() Uuid buyerId,@UuidConverter() Uuid? chatId,@MoneyConverter() Money amount, OfferStatus status,@UuidConverter() Uuid? counterOf,@UtcDateTimeConverter() DateTime? expiresAt,@UtcDateTimeConverter() DateTime createdAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get listingId;@override $UuidCopyWith<$Res> get buyerId;@override $UuidCopyWith<$Res>? get chatId;@override $MoneyCopyWith<$Res> get amount;@override $UuidCopyWith<$Res>? get counterOf;

}
/// @nodoc
class __$OfferCopyWithImpl<$Res>
    implements _$OfferCopyWith<$Res> {
  __$OfferCopyWithImpl(this._self, this._then);

  final _Offer _self;
  final $Res Function(_Offer) _then;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? chatId = freezed,Object? amount = null,Object? status = null,Object? counterOf = freezed,Object? expiresAt = freezed,Object? createdAt = null,}) {
  return _then(_Offer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as Uuid,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OfferStatus,counterOf: freezed == counterOf ? _self.counterOf : counterOf // ignore: cast_nullable_to_non_nullable
as Uuid?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get buyerId {
  
  return $UuidCopyWith<$Res>(_self.buyerId, (value) {
    return _then(_self.copyWith(buyerId: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get chatId {
    if (_self.chatId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.chatId!, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get counterOf {
    if (_self.counterOf == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.counterOf!, (value) {
    return _then(_self.copyWith(counterOf: value));
  });
}
}


/// @nodoc
mixin _$OfferDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'listing_id') String get listingId;@JsonKey(name: 'buyer_id') String get buyerId;@JsonKey(name: 'chat_id') String? get chatId;@JsonKey(name: 'amount_cents') int get amountCents;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'status') String get status;@JsonKey(name: 'counter_of') String? get counterOf;@JsonKey(name: 'expires_at') String? get expiresAt;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of OfferDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferDtoCopyWith<OfferDto> get copyWith => _$OfferDtoCopyWithImpl<OfferDto>(this as OfferDto, _$identity);

  /// Serializes this OfferDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.counterOf, counterOf) || other.counterOf == counterOf)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,chatId,amountCents,currency,status,counterOf,expiresAt,createdAt);

@override
String toString() {
  return 'OfferDto(id: $id, listingId: $listingId, buyerId: $buyerId, chatId: $chatId, amountCents: $amountCents, currency: $currency, status: $status, counterOf: $counterOf, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OfferDtoCopyWith<$Res>  {
  factory $OfferDtoCopyWith(OfferDto value, $Res Function(OfferDto) _then) = _$OfferDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'buyer_id') String buyerId,@JsonKey(name: 'chat_id') String? chatId,@JsonKey(name: 'amount_cents') int amountCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'status') String status,@JsonKey(name: 'counter_of') String? counterOf,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$OfferDtoCopyWithImpl<$Res>
    implements $OfferDtoCopyWith<$Res> {
  _$OfferDtoCopyWithImpl(this._self, this._then);

  final OfferDto _self;
  final $Res Function(OfferDto) _then;

/// Create a copy of OfferDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? chatId = freezed,Object? amountCents = null,Object? currency = null,Object? status = null,Object? counterOf = freezed,Object? expiresAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,counterOf: freezed == counterOf ? _self.counterOf : counterOf // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OfferDto].
extension OfferDtoPatterns on OfferDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferDto value)  $default,){
final _that = this;
switch (_that) {
case _OfferDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferDto value)?  $default,){
final _that = this;
switch (_that) {
case _OfferDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'buyer_id')  String buyerId, @JsonKey(name: 'chat_id')  String? chatId, @JsonKey(name: 'amount_cents')  int amountCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'status')  String status, @JsonKey(name: 'counter_of')  String? counterOf, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferDto() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.chatId,_that.amountCents,_that.currency,_that.status,_that.counterOf,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'buyer_id')  String buyerId, @JsonKey(name: 'chat_id')  String? chatId, @JsonKey(name: 'amount_cents')  int amountCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'status')  String status, @JsonKey(name: 'counter_of')  String? counterOf, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _OfferDto():
return $default(_that.id,_that.listingId,_that.buyerId,_that.chatId,_that.amountCents,_that.currency,_that.status,_that.counterOf,_that.expiresAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'buyer_id')  String buyerId, @JsonKey(name: 'chat_id')  String? chatId, @JsonKey(name: 'amount_cents')  int amountCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'status')  String status, @JsonKey(name: 'counter_of')  String? counterOf, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OfferDto() when $default != null:
return $default(_that.id,_that.listingId,_that.buyerId,_that.chatId,_that.amountCents,_that.currency,_that.status,_that.counterOf,_that.expiresAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferDto extends OfferDto {
  const _OfferDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'listing_id') required this.listingId, @JsonKey(name: 'buyer_id') required this.buyerId, @JsonKey(name: 'chat_id') this.chatId, @JsonKey(name: 'amount_cents') required this.amountCents, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'counter_of') this.counterOf, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _OfferDto.fromJson(Map<String, dynamic> json) => _$OfferDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'listing_id') final  String listingId;
@override@JsonKey(name: 'buyer_id') final  String buyerId;
@override@JsonKey(name: 'chat_id') final  String? chatId;
@override@JsonKey(name: 'amount_cents') final  int amountCents;
@override@JsonKey(name: 'currency') final  String currency;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'counter_of') final  String? counterOf;
@override@JsonKey(name: 'expires_at') final  String? expiresAt;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of OfferDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferDtoCopyWith<_OfferDto> get copyWith => __$OfferDtoCopyWithImpl<_OfferDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.counterOf, counterOf) || other.counterOf == counterOf)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,buyerId,chatId,amountCents,currency,status,counterOf,expiresAt,createdAt);

@override
String toString() {
  return 'OfferDto(id: $id, listingId: $listingId, buyerId: $buyerId, chatId: $chatId, amountCents: $amountCents, currency: $currency, status: $status, counterOf: $counterOf, expiresAt: $expiresAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OfferDtoCopyWith<$Res> implements $OfferDtoCopyWith<$Res> {
  factory _$OfferDtoCopyWith(_OfferDto value, $Res Function(_OfferDto) _then) = __$OfferDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'buyer_id') String buyerId,@JsonKey(name: 'chat_id') String? chatId,@JsonKey(name: 'amount_cents') int amountCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'status') String status,@JsonKey(name: 'counter_of') String? counterOf,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$OfferDtoCopyWithImpl<$Res>
    implements _$OfferDtoCopyWith<$Res> {
  __$OfferDtoCopyWithImpl(this._self, this._then);

  final _OfferDto _self;
  final $Res Function(_OfferDto) _then;

/// Create a copy of OfferDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? buyerId = null,Object? chatId = freezed,Object? amountCents = null,Object? currency = null,Object? status = null,Object? counterOf = freezed,Object? expiresAt = freezed,Object? createdAt = null,}) {
  return _then(_OfferDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,counterOf: freezed == counterOf ? _self.counterOf : counterOf // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
