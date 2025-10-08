// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tech_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TechDetails {

 String get brand; String get model; Condition? get condition; Map<String, String>? get specs; String? get warranty;
/// Create a copy of TechDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechDetailsCopyWith<TechDetails> get copyWith => _$TechDetailsCopyWithImpl<TechDetails>(this as TechDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechDetails&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.warranty, warranty) || other.warranty == warranty));
}


@override
int get hashCode => Object.hash(runtimeType,brand,model,condition,const DeepCollectionEquality().hash(specs),warranty);

@override
String toString() {
  return 'TechDetails(brand: $brand, model: $model, condition: $condition, specs: $specs, warranty: $warranty)';
}


}

/// @nodoc
abstract mixin class $TechDetailsCopyWith<$Res>  {
  factory $TechDetailsCopyWith(TechDetails value, $Res Function(TechDetails) _then) = _$TechDetailsCopyWithImpl;
@useResult
$Res call({
 String brand, String model, Condition? condition, Map<String, String>? specs, String? warranty
});




}
/// @nodoc
class _$TechDetailsCopyWithImpl<$Res>
    implements $TechDetailsCopyWith<$Res> {
  _$TechDetailsCopyWithImpl(this._self, this._then);

  final TechDetails _self;
  final $Res Function(TechDetails) _then;

/// Create a copy of TechDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brand = null,Object? model = null,Object? condition = freezed,Object? specs = freezed,Object? warranty = freezed,}) {
  return _then(_self.copyWith(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition?,specs: freezed == specs ? _self.specs : specs // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,warranty: freezed == warranty ? _self.warranty : warranty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TechDetails].
extension TechDetailsPatterns on TechDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechDetails value)  $default,){
final _that = this;
switch (_that) {
case _TechDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechDetails value)?  $default,){
final _that = this;
switch (_that) {
case _TechDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String brand,  String model,  Condition? condition,  Map<String, String>? specs,  String? warranty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechDetails() when $default != null:
return $default(_that.brand,_that.model,_that.condition,_that.specs,_that.warranty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String brand,  String model,  Condition? condition,  Map<String, String>? specs,  String? warranty)  $default,) {final _that = this;
switch (_that) {
case _TechDetails():
return $default(_that.brand,_that.model,_that.condition,_that.specs,_that.warranty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String brand,  String model,  Condition? condition,  Map<String, String>? specs,  String? warranty)?  $default,) {final _that = this;
switch (_that) {
case _TechDetails() when $default != null:
return $default(_that.brand,_that.model,_that.condition,_that.specs,_that.warranty);case _:
  return null;

}
}

}

/// @nodoc


class _TechDetails extends TechDetails {
  const _TechDetails({required this.brand, required this.model, this.condition, final  Map<String, String>? specs, this.warranty}): _specs = specs,super._();
  

@override final  String brand;
@override final  String model;
@override final  Condition? condition;
 final  Map<String, String>? _specs;
@override Map<String, String>? get specs {
  final value = _specs;
  if (value == null) return null;
  if (_specs is EqualUnmodifiableMapView) return _specs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? warranty;

/// Create a copy of TechDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechDetailsCopyWith<_TechDetails> get copyWith => __$TechDetailsCopyWithImpl<_TechDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechDetails&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.warranty, warranty) || other.warranty == warranty));
}


@override
int get hashCode => Object.hash(runtimeType,brand,model,condition,const DeepCollectionEquality().hash(_specs),warranty);

@override
String toString() {
  return 'TechDetails(brand: $brand, model: $model, condition: $condition, specs: $specs, warranty: $warranty)';
}


}

/// @nodoc
abstract mixin class _$TechDetailsCopyWith<$Res> implements $TechDetailsCopyWith<$Res> {
  factory _$TechDetailsCopyWith(_TechDetails value, $Res Function(_TechDetails) _then) = __$TechDetailsCopyWithImpl;
@override @useResult
$Res call({
 String brand, String model, Condition? condition, Map<String, String>? specs, String? warranty
});




}
/// @nodoc
class __$TechDetailsCopyWithImpl<$Res>
    implements _$TechDetailsCopyWith<$Res> {
  __$TechDetailsCopyWithImpl(this._self, this._then);

  final _TechDetails _self;
  final $Res Function(_TechDetails) _then;

/// Create a copy of TechDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brand = null,Object? model = null,Object? condition = freezed,Object? specs = freezed,Object? warranty = freezed,}) {
  return _then(_TechDetails(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition?,specs: freezed == specs ? _self._specs : specs // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,warranty: freezed == warranty ? _self.warranty : warranty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
