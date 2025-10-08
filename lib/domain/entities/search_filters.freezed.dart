// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchFilters {

 String? get query; CatalogCategory? get category; Campus? get campus; double? get minPrice; double? get maxPrice; String? get brand; Condition? get condition; String? get availability; String? get sort;
/// Create a copy of SearchFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFiltersCopyWith<SearchFilters> get copyWith => _$SearchFiltersCopyWithImpl<SearchFilters>(this as SearchFilters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilters&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,query,category,campus,minPrice,maxPrice,brand,condition,availability,sort);

@override
String toString() {
  return 'SearchFilters(query: $query, category: $category, campus: $campus, minPrice: $minPrice, maxPrice: $maxPrice, brand: $brand, condition: $condition, availability: $availability, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $SearchFiltersCopyWith<$Res>  {
  factory $SearchFiltersCopyWith(SearchFilters value, $Res Function(SearchFilters) _then) = _$SearchFiltersCopyWithImpl;
@useResult
$Res call({
 String? query, CatalogCategory? category, Campus? campus, double? minPrice, double? maxPrice, String? brand, Condition? condition, String? availability, String? sort
});


$CampusCopyWith<$Res>? get campus;

}
/// @nodoc
class _$SearchFiltersCopyWithImpl<$Res>
    implements $SearchFiltersCopyWith<$Res> {
  _$SearchFiltersCopyWithImpl(this._self, this._then);

  final SearchFilters _self;
  final $Res Function(SearchFilters) _then;

/// Create a copy of SearchFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? category = freezed,Object? campus = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? brand = freezed,Object? condition = freezed,Object? availability = freezed,Object? sort = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CatalogCategory?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as Campus?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SearchFilters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampusCopyWith<$Res>? get campus {
    if (_self.campus == null) {
    return null;
  }

  return $CampusCopyWith<$Res>(_self.campus!, (value) {
    return _then(_self.copyWith(campus: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchFilters].
extension SearchFiltersPatterns on SearchFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFilters value)  $default,){
final _that = this;
switch (_that) {
case _SearchFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFilters value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  CatalogCategory? category,  Campus? campus,  double? minPrice,  double? maxPrice,  String? brand,  Condition? condition,  String? availability,  String? sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilters() when $default != null:
return $default(_that.query,_that.category,_that.campus,_that.minPrice,_that.maxPrice,_that.brand,_that.condition,_that.availability,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  CatalogCategory? category,  Campus? campus,  double? minPrice,  double? maxPrice,  String? brand,  Condition? condition,  String? availability,  String? sort)  $default,) {final _that = this;
switch (_that) {
case _SearchFilters():
return $default(_that.query,_that.category,_that.campus,_that.minPrice,_that.maxPrice,_that.brand,_that.condition,_that.availability,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  CatalogCategory? category,  Campus? campus,  double? minPrice,  double? maxPrice,  String? brand,  Condition? condition,  String? availability,  String? sort)?  $default,) {final _that = this;
switch (_that) {
case _SearchFilters() when $default != null:
return $default(_that.query,_that.category,_that.campus,_that.minPrice,_that.maxPrice,_that.brand,_that.condition,_that.availability,_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFilters extends SearchFilters {
  const _SearchFilters({this.query, this.category, this.campus, this.minPrice, this.maxPrice, this.brand, this.condition, this.availability, this.sort}): super._();
  

@override final  String? query;
@override final  CatalogCategory? category;
@override final  Campus? campus;
@override final  double? minPrice;
@override final  double? maxPrice;
@override final  String? brand;
@override final  Condition? condition;
@override final  String? availability;
@override final  String? sort;

/// Create a copy of SearchFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFiltersCopyWith<_SearchFilters> get copyWith => __$SearchFiltersCopyWithImpl<_SearchFilters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilters&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,query,category,campus,minPrice,maxPrice,brand,condition,availability,sort);

@override
String toString() {
  return 'SearchFilters(query: $query, category: $category, campus: $campus, minPrice: $minPrice, maxPrice: $maxPrice, brand: $brand, condition: $condition, availability: $availability, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$SearchFiltersCopyWith<$Res> implements $SearchFiltersCopyWith<$Res> {
  factory _$SearchFiltersCopyWith(_SearchFilters value, $Res Function(_SearchFilters) _then) = __$SearchFiltersCopyWithImpl;
@override @useResult
$Res call({
 String? query, CatalogCategory? category, Campus? campus, double? minPrice, double? maxPrice, String? brand, Condition? condition, String? availability, String? sort
});


@override $CampusCopyWith<$Res>? get campus;

}
/// @nodoc
class __$SearchFiltersCopyWithImpl<$Res>
    implements _$SearchFiltersCopyWith<$Res> {
  __$SearchFiltersCopyWithImpl(this._self, this._then);

  final _SearchFilters _self;
  final $Res Function(_SearchFilters) _then;

/// Create a copy of SearchFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? category = freezed,Object? campus = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? brand = freezed,Object? condition = freezed,Object? availability = freezed,Object? sort = freezed,}) {
  return _then(_SearchFilters(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CatalogCategory?,campus: freezed == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as Campus?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SearchFilters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampusCopyWith<$Res>? get campus {
    if (_self.campus == null) {
    return null;
  }

  return $CampusCopyWith<$Res>(_self.campus!, (value) {
    return _then(_self.copyWith(campus: value));
  });
}
}

// dart format on
