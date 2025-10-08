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

 String get listingId; Money get suggestedPrice; String get strategy; bool get accepted;
/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceSuggestionCopyWith<PriceSuggestion> get copyWith => _$PriceSuggestionCopyWithImpl<PriceSuggestion>(this as PriceSuggestion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceSuggestion&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.suggestedPrice, suggestedPrice) || other.suggestedPrice == suggestedPrice)&&(identical(other.strategy, strategy) || other.strategy == strategy)&&(identical(other.accepted, accepted) || other.accepted == accepted));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,suggestedPrice,strategy,accepted);

@override
String toString() {
  return 'PriceSuggestion(listingId: $listingId, suggestedPrice: $suggestedPrice, strategy: $strategy, accepted: $accepted)';
}


}

/// @nodoc
abstract mixin class $PriceSuggestionCopyWith<$Res>  {
  factory $PriceSuggestionCopyWith(PriceSuggestion value, $Res Function(PriceSuggestion) _then) = _$PriceSuggestionCopyWithImpl;
@useResult
$Res call({
 String listingId, Money suggestedPrice, String strategy, bool accepted
});


$MoneyCopyWith<$Res> get suggestedPrice;

}
/// @nodoc
class _$PriceSuggestionCopyWithImpl<$Res>
    implements $PriceSuggestionCopyWith<$Res> {
  _$PriceSuggestionCopyWithImpl(this._self, this._then);

  final PriceSuggestion _self;
  final $Res Function(PriceSuggestion) _then;

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? suggestedPrice = null,Object? strategy = null,Object? accepted = null,}) {
  return _then(_self.copyWith(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,suggestedPrice: null == suggestedPrice ? _self.suggestedPrice : suggestedPrice // ignore: cast_nullable_to_non_nullable
as Money,strategy: null == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as String,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PriceSuggestion
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String listingId,  Money suggestedPrice,  String strategy,  bool accepted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceSuggestion() when $default != null:
return $default(_that.listingId,_that.suggestedPrice,_that.strategy,_that.accepted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String listingId,  Money suggestedPrice,  String strategy,  bool accepted)  $default,) {final _that = this;
switch (_that) {
case _PriceSuggestion():
return $default(_that.listingId,_that.suggestedPrice,_that.strategy,_that.accepted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String listingId,  Money suggestedPrice,  String strategy,  bool accepted)?  $default,) {final _that = this;
switch (_that) {
case _PriceSuggestion() when $default != null:
return $default(_that.listingId,_that.suggestedPrice,_that.strategy,_that.accepted);case _:
  return null;

}
}

}

/// @nodoc


class _PriceSuggestion extends PriceSuggestion {
  const _PriceSuggestion({required this.listingId, required this.suggestedPrice, required this.strategy, this.accepted = false}): super._();
  

@override final  String listingId;
@override final  Money suggestedPrice;
@override final  String strategy;
@override@JsonKey() final  bool accepted;

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceSuggestionCopyWith<_PriceSuggestion> get copyWith => __$PriceSuggestionCopyWithImpl<_PriceSuggestion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceSuggestion&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.suggestedPrice, suggestedPrice) || other.suggestedPrice == suggestedPrice)&&(identical(other.strategy, strategy) || other.strategy == strategy)&&(identical(other.accepted, accepted) || other.accepted == accepted));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,suggestedPrice,strategy,accepted);

@override
String toString() {
  return 'PriceSuggestion(listingId: $listingId, suggestedPrice: $suggestedPrice, strategy: $strategy, accepted: $accepted)';
}


}

/// @nodoc
abstract mixin class _$PriceSuggestionCopyWith<$Res> implements $PriceSuggestionCopyWith<$Res> {
  factory _$PriceSuggestionCopyWith(_PriceSuggestion value, $Res Function(_PriceSuggestion) _then) = __$PriceSuggestionCopyWithImpl;
@override @useResult
$Res call({
 String listingId, Money suggestedPrice, String strategy, bool accepted
});


@override $MoneyCopyWith<$Res> get suggestedPrice;

}
/// @nodoc
class __$PriceSuggestionCopyWithImpl<$Res>
    implements _$PriceSuggestionCopyWith<$Res> {
  __$PriceSuggestionCopyWithImpl(this._self, this._then);

  final _PriceSuggestion _self;
  final $Res Function(_PriceSuggestion) _then;

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = null,Object? suggestedPrice = null,Object? strategy = null,Object? accepted = null,}) {
  return _then(_PriceSuggestion(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,suggestedPrice: null == suggestedPrice ? _self.suggestedPrice : suggestedPrice // ignore: cast_nullable_to_non_nullable
as Money,strategy: null == strategy ? _self.strategy : strategy // ignore: cast_nullable_to_non_nullable
as String,accepted: null == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PriceSuggestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get suggestedPrice {
  
  return $MoneyCopyWith<$Res>(_self.suggestedPrice, (value) {
    return _then(_self.copyWith(suggestedPrice: value));
  });
}
}

// dart format on
