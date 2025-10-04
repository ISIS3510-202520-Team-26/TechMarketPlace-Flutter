// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceSuggestion {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get listingId;@MoneyConverter() Money get suggestedPrice; String get modelVersion; bool get accepted;@UtcDateTimeConverter() DateTime? get acceptedAt; Map<String, dynamic> get features;@UtcDateTimeConverter() DateTime get createdAt;
/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceSuggestionCopyWith<PriceSuggestion> get copyWith => _$PriceSuggestionCopyWithImpl<PriceSuggestion>(this as PriceSuggestion, _$identity);

  /// Serializes this PriceSuggestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceSuggestion&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.suggestedPrice, suggestedPrice) || other.suggestedPrice == suggestedPrice)&&(identical(other.modelVersion, modelVersion) || other.modelVersion == modelVersion)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,suggestedPrice,modelVersion,accepted,acceptedAt,const DeepCollectionEquality().hash(features),createdAt);

@override
String toString() {
  return 'PriceSuggestion(id: $id, listingId: $listingId, suggestedPrice: $suggestedPrice, modelVersion: $modelVersion, accepted: $accepted, acceptedAt: $acceptedAt, features: $features, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PriceSuggestionCopyWith<$Res>  {
  factory $PriceSuggestionCopyWith(PriceSuggestion value, $Res Function(PriceSuggestion) _then) = _$PriceSuggestionCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId,@MoneyConverter() Money suggestedPrice, String modelVersion, bool accepted,@UtcDateTimeConverter() DateTime? acceptedAt, Map<String, dynamic> features,@UtcDateTimeConverter() DateTime createdAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get listingId;$MoneyCopyWith<$Res> get suggestedPrice;

}
/// @nodoc
class _$PriceSuggestionCopyWithImpl<$Res>
    implements $PriceSuggestionCopyWith<$Res> {
  _$PriceSuggestionCopyWithImpl(this._self, this._then);

  final PriceSuggestion _self;
  final $Res Function(PriceSuggestion) _then;

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? suggestedPrice = null,Object? modelVersion = null,Object? accepted = null,Object? acceptedAt = freezed,Object? features = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,suggestedPrice: null == suggestedPrice ? _self.suggestedPrice : suggestedPrice // ignore: cast_nullable_to_non_nullable
as Money,modelVersion: null == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get suggestedPrice {
  
  return $MoneyCopyWith<$Res>(_self.suggestedPrice, (value) {
    return _then(_self.copyWith(suggestedPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceSuggestion].
extension PriceSuggestionPatterns on PriceSuggestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceSuggestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceSuggestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceSuggestion value)  $default,){
final _that = this;
switch (_that) {
case _PriceSuggestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceSuggestion value)?  $default,){
final _that = this;
switch (_that) {
case _PriceSuggestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @MoneyConverter()  Money suggestedPrice,  String modelVersion,  bool accepted, @UtcDateTimeConverter()  DateTime? acceptedAt,  Map<String, dynamic> features, @UtcDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceSuggestion() when $default != null:
return $default(_that.id,_that.listingId,_that.suggestedPrice,_that.modelVersion,_that.accepted,_that.acceptedAt,_that.features,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @MoneyConverter()  Money suggestedPrice,  String modelVersion,  bool accepted, @UtcDateTimeConverter()  DateTime? acceptedAt,  Map<String, dynamic> features, @UtcDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _PriceSuggestion():
return $default(_that.id,_that.listingId,_that.suggestedPrice,_that.modelVersion,_that.accepted,_that.acceptedAt,_that.features,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid listingId, @MoneyConverter()  Money suggestedPrice,  String modelVersion,  bool accepted, @UtcDateTimeConverter()  DateTime? acceptedAt,  Map<String, dynamic> features, @UtcDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PriceSuggestion() when $default != null:
return $default(_that.id,_that.listingId,_that.suggestedPrice,_that.modelVersion,_that.accepted,_that.acceptedAt,_that.features,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceSuggestion implements PriceSuggestion {
  const _PriceSuggestion({@UuidConverter() required this.id, @UuidConverter() required this.listingId, @MoneyConverter() required this.suggestedPrice, required this.modelVersion, this.accepted = false, @UtcDateTimeConverter() this.acceptedAt, final  Map<String, dynamic> features = const <String, dynamic>{}, @UtcDateTimeConverter() required this.createdAt}): _features = features;
  factory _PriceSuggestion.fromJson(Map<String, dynamic> json) => _$PriceSuggestionFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid listingId;
@override@MoneyConverter() final  Money suggestedPrice;
@override final  String modelVersion;
@override@JsonKey() final  bool accepted;
@override@UtcDateTimeConverter() final  DateTime? acceptedAt;
 final  Map<String, dynamic> _features;
@override@JsonKey() Map<String, dynamic> get features {
  if (_features is EqualUnmodifiableMapView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_features);
}

@override@UtcDateTimeConverter() final  DateTime createdAt;

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceSuggestionCopyWith<_PriceSuggestion> get copyWith => __$PriceSuggestionCopyWithImpl<_PriceSuggestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceSuggestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceSuggestion&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.suggestedPrice, suggestedPrice) || other.suggestedPrice == suggestedPrice)&&(identical(other.modelVersion, modelVersion) || other.modelVersion == modelVersion)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,suggestedPrice,modelVersion,accepted,acceptedAt,const DeepCollectionEquality().hash(_features),createdAt);

@override
String toString() {
  return 'PriceSuggestion(id: $id, listingId: $listingId, suggestedPrice: $suggestedPrice, modelVersion: $modelVersion, accepted: $accepted, acceptedAt: $acceptedAt, features: $features, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PriceSuggestionCopyWith<$Res> implements $PriceSuggestionCopyWith<$Res> {
  factory _$PriceSuggestionCopyWith(_PriceSuggestion value, $Res Function(_PriceSuggestion) _then) = __$PriceSuggestionCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid listingId,@MoneyConverter() Money suggestedPrice, String modelVersion, bool accepted,@UtcDateTimeConverter() DateTime? acceptedAt, Map<String, dynamic> features,@UtcDateTimeConverter() DateTime createdAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get listingId;@override $MoneyCopyWith<$Res> get suggestedPrice;

}
/// @nodoc
class __$PriceSuggestionCopyWithImpl<$Res>
    implements _$PriceSuggestionCopyWith<$Res> {
  __$PriceSuggestionCopyWithImpl(this._self, this._then);

  final _PriceSuggestion _self;
  final $Res Function(_PriceSuggestion) _then;

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? suggestedPrice = null,Object? modelVersion = null,Object? accepted = null,Object? acceptedAt = freezed,Object? features = null,Object? createdAt = null,}) {
  return _then(_PriceSuggestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as Uuid,suggestedPrice: null == suggestedPrice ? _self.suggestedPrice : suggestedPrice // ignore: cast_nullable_to_non_nullable
as Money,modelVersion: null == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get listingId {
  
  return $UuidCopyWith<$Res>(_self.listingId, (value) {
    return _then(_self.copyWith(listingId: value));
  });
}/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get suggestedPrice {
  
  return $MoneyCopyWith<$Res>(_self.suggestedPrice, (value) {
    return _then(_self.copyWith(suggestedPrice: value));
  });
}
}


/// @nodoc
mixin _$PriceSuggestionDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'listing_id') String get listingId;@JsonKey(name: 'suggested_price_cents') int get suggestedPriceCents;@JsonKey(name: 'model_version') String get modelVersion;@JsonKey(name: 'accepted') bool get accepted;@JsonKey(name: 'accepted_at') String? get acceptedAt;@JsonKey(name: 'features') Map<String, dynamic>? get features;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'currency') String? get currency;
/// Create a copy of PriceSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceSuggestionDtoCopyWith<PriceSuggestionDto> get copyWith => _$PriceSuggestionDtoCopyWithImpl<PriceSuggestionDto>(this as PriceSuggestionDto, _$identity);

  /// Serializes this PriceSuggestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceSuggestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.suggestedPriceCents, suggestedPriceCents) || other.suggestedPriceCents == suggestedPriceCents)&&(identical(other.modelVersion, modelVersion) || other.modelVersion == modelVersion)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,suggestedPriceCents,modelVersion,accepted,acceptedAt,const DeepCollectionEquality().hash(features),createdAt,currency);

@override
String toString() {
  return 'PriceSuggestionDto(id: $id, listingId: $listingId, suggestedPriceCents: $suggestedPriceCents, modelVersion: $modelVersion, accepted: $accepted, acceptedAt: $acceptedAt, features: $features, createdAt: $createdAt, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $PriceSuggestionDtoCopyWith<$Res>  {
  factory $PriceSuggestionDtoCopyWith(PriceSuggestionDto value, $Res Function(PriceSuggestionDto) _then) = _$PriceSuggestionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'suggested_price_cents') int suggestedPriceCents,@JsonKey(name: 'model_version') String modelVersion,@JsonKey(name: 'accepted') bool accepted,@JsonKey(name: 'accepted_at') String? acceptedAt,@JsonKey(name: 'features') Map<String, dynamic>? features,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'currency') String? currency
});




}
/// @nodoc
class _$PriceSuggestionDtoCopyWithImpl<$Res>
    implements $PriceSuggestionDtoCopyWith<$Res> {
  _$PriceSuggestionDtoCopyWithImpl(this._self, this._then);

  final PriceSuggestionDto _self;
  final $Res Function(PriceSuggestionDto) _then;

/// Create a copy of PriceSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? suggestedPriceCents = null,Object? modelVersion = null,Object? accepted = null,Object? acceptedAt = freezed,Object? features = freezed,Object? createdAt = null,Object? currency = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,suggestedPriceCents: null == suggestedPriceCents ? _self.suggestedPriceCents : suggestedPriceCents // ignore: cast_nullable_to_non_nullable
as int,modelVersion: null == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as String?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceSuggestionDto].
extension PriceSuggestionDtoPatterns on PriceSuggestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceSuggestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceSuggestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceSuggestionDto value)  $default,){
final _that = this;
switch (_that) {
case _PriceSuggestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceSuggestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PriceSuggestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'suggested_price_cents')  int suggestedPriceCents, @JsonKey(name: 'model_version')  String modelVersion, @JsonKey(name: 'accepted')  bool accepted, @JsonKey(name: 'accepted_at')  String? acceptedAt, @JsonKey(name: 'features')  Map<String, dynamic>? features, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'currency')  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceSuggestionDto() when $default != null:
return $default(_that.id,_that.listingId,_that.suggestedPriceCents,_that.modelVersion,_that.accepted,_that.acceptedAt,_that.features,_that.createdAt,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'suggested_price_cents')  int suggestedPriceCents, @JsonKey(name: 'model_version')  String modelVersion, @JsonKey(name: 'accepted')  bool accepted, @JsonKey(name: 'accepted_at')  String? acceptedAt, @JsonKey(name: 'features')  Map<String, dynamic>? features, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'currency')  String? currency)  $default,) {final _that = this;
switch (_that) {
case _PriceSuggestionDto():
return $default(_that.id,_that.listingId,_that.suggestedPriceCents,_that.modelVersion,_that.accepted,_that.acceptedAt,_that.features,_that.createdAt,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'listing_id')  String listingId, @JsonKey(name: 'suggested_price_cents')  int suggestedPriceCents, @JsonKey(name: 'model_version')  String modelVersion, @JsonKey(name: 'accepted')  bool accepted, @JsonKey(name: 'accepted_at')  String? acceptedAt, @JsonKey(name: 'features')  Map<String, dynamic>? features, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'currency')  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _PriceSuggestionDto() when $default != null:
return $default(_that.id,_that.listingId,_that.suggestedPriceCents,_that.modelVersion,_that.accepted,_that.acceptedAt,_that.features,_that.createdAt,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceSuggestionDto extends PriceSuggestionDto {
  const _PriceSuggestionDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'listing_id') required this.listingId, @JsonKey(name: 'suggested_price_cents') required this.suggestedPriceCents, @JsonKey(name: 'model_version') required this.modelVersion, @JsonKey(name: 'accepted') required this.accepted, @JsonKey(name: 'accepted_at') this.acceptedAt, @JsonKey(name: 'features') final  Map<String, dynamic>? features, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'currency') this.currency}): _features = features,super._();
  factory _PriceSuggestionDto.fromJson(Map<String, dynamic> json) => _$PriceSuggestionDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'listing_id') final  String listingId;
@override@JsonKey(name: 'suggested_price_cents') final  int suggestedPriceCents;
@override@JsonKey(name: 'model_version') final  String modelVersion;
@override@JsonKey(name: 'accepted') final  bool accepted;
@override@JsonKey(name: 'accepted_at') final  String? acceptedAt;
 final  Map<String, dynamic>? _features;
@override@JsonKey(name: 'features') Map<String, dynamic>? get features {
  final value = _features;
  if (value == null) return null;
  if (_features is EqualUnmodifiableMapView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'currency') final  String? currency;

/// Create a copy of PriceSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceSuggestionDtoCopyWith<_PriceSuggestionDto> get copyWith => __$PriceSuggestionDtoCopyWithImpl<_PriceSuggestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceSuggestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceSuggestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.suggestedPriceCents, suggestedPriceCents) || other.suggestedPriceCents == suggestedPriceCents)&&(identical(other.modelVersion, modelVersion) || other.modelVersion == modelVersion)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,suggestedPriceCents,modelVersion,accepted,acceptedAt,const DeepCollectionEquality().hash(_features),createdAt,currency);

@override
String toString() {
  return 'PriceSuggestionDto(id: $id, listingId: $listingId, suggestedPriceCents: $suggestedPriceCents, modelVersion: $modelVersion, accepted: $accepted, acceptedAt: $acceptedAt, features: $features, createdAt: $createdAt, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$PriceSuggestionDtoCopyWith<$Res> implements $PriceSuggestionDtoCopyWith<$Res> {
  factory _$PriceSuggestionDtoCopyWith(_PriceSuggestionDto value, $Res Function(_PriceSuggestionDto) _then) = __$PriceSuggestionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'listing_id') String listingId,@JsonKey(name: 'suggested_price_cents') int suggestedPriceCents,@JsonKey(name: 'model_version') String modelVersion,@JsonKey(name: 'accepted') bool accepted,@JsonKey(name: 'accepted_at') String? acceptedAt,@JsonKey(name: 'features') Map<String, dynamic>? features,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'currency') String? currency
});




}
/// @nodoc
class __$PriceSuggestionDtoCopyWithImpl<$Res>
    implements _$PriceSuggestionDtoCopyWith<$Res> {
  __$PriceSuggestionDtoCopyWithImpl(this._self, this._then);

  final _PriceSuggestionDto _self;
  final $Res Function(_PriceSuggestionDto) _then;

/// Create a copy of PriceSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? suggestedPriceCents = null,Object? modelVersion = null,Object? accepted = null,Object? acceptedAt = freezed,Object? features = freezed,Object? createdAt = null,Object? currency = freezed,}) {
  return _then(_PriceSuggestionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,suggestedPriceCents: null == suggestedPriceCents ? _self.suggestedPriceCents : suggestedPriceCents // ignore: cast_nullable_to_non_nullable
as int,modelVersion: null == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as String?,features: freezed == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
