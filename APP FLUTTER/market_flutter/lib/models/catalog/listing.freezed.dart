// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Listing {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get sellerId;@UuidConverter() Uuid get categoryId;@UuidConverter() Uuid? get brandId;@UuidConverter() Uuid? get locationId; String get title; String? get description;@MoneyConverter() Money get price; ListingCondition get condition; int get quantity; int get mediaCount; JsonMap get attributes; List<JsonMap> get shippingOptions; ListingStatus get status; ListingVisibility get visibility;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;@UtcDateTimeConverter() DateTime? get deletedAt;
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingCopyWith<Listing> get copyWith => _$ListingCopyWithImpl<Listing>(this as Listing, _$identity);

  /// Serializes this Listing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&const DeepCollectionEquality().equals(other.shippingOptions, shippingOptions)&&(identical(other.status, status) || other.status == status)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,categoryId,brandId,locationId,title,description,price,condition,quantity,mediaCount,const DeepCollectionEquality().hash(attributes),const DeepCollectionEquality().hash(shippingOptions),status,visibility,createdAt,updatedAt,deletedAt);

@override
String toString() {
  return 'Listing(id: $id, sellerId: $sellerId, categoryId: $categoryId, brandId: $brandId, locationId: $locationId, title: $title, description: $description, price: $price, condition: $condition, quantity: $quantity, mediaCount: $mediaCount, attributes: $attributes, shippingOptions: $shippingOptions, status: $status, visibility: $visibility, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $ListingCopyWith<$Res>  {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) _then) = _$ListingCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid sellerId,@UuidConverter() Uuid categoryId,@UuidConverter() Uuid? brandId,@UuidConverter() Uuid? locationId, String title, String? description,@MoneyConverter() Money price, ListingCondition condition, int quantity, int mediaCount, JsonMap attributes, List<JsonMap> shippingOptions, ListingStatus status, ListingVisibility visibility,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt,@UtcDateTimeConverter() DateTime? deletedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get sellerId;$UuidCopyWith<$Res> get categoryId;$UuidCopyWith<$Res>? get brandId;$UuidCopyWith<$Res>? get locationId;$MoneyCopyWith<$Res> get price;

}
/// @nodoc
class _$ListingCopyWithImpl<$Res>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._self, this._then);

  final Listing _self;
  final $Res Function(Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? categoryId = null,Object? brandId = freezed,Object? locationId = freezed,Object? title = null,Object? description = freezed,Object? price = null,Object? condition = null,Object? quantity = null,Object? mediaCount = null,Object? attributes = null,Object? shippingOptions = null,Object? status = null,Object? visibility = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as Uuid,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as Uuid,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as Uuid?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as Uuid?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Money,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ListingCondition,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as JsonMap,shippingOptions: null == shippingOptions ? _self.shippingOptions : shippingOptions // ignore: cast_nullable_to_non_nullable
as List<JsonMap>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as ListingVisibility,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get sellerId {
  
  return $UuidCopyWith<$Res>(_self.sellerId, (value) {
    return _then(_self.copyWith(sellerId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get categoryId {
  
  return $UuidCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get brandId {
    if (_self.brandId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.brandId!, (value) {
    return _then(_self.copyWith(brandId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get locationId {
    if (_self.locationId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.locationId!, (value) {
    return _then(_self.copyWith(locationId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get price {
  
  return $MoneyCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// Adds pattern-matching-related methods to [Listing].
extension ListingPatterns on Listing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Listing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Listing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Listing value)  $default,){
final _that = this;
switch (_that) {
case _Listing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Listing value)?  $default,){
final _that = this;
switch (_that) {
case _Listing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid sellerId, @UuidConverter()  Uuid categoryId, @UuidConverter()  Uuid? brandId, @UuidConverter()  Uuid? locationId,  String title,  String? description, @MoneyConverter()  Money price,  ListingCondition condition,  int quantity,  int mediaCount,  JsonMap attributes,  List<JsonMap> shippingOptions,  ListingStatus status,  ListingVisibility visibility, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt, @UtcDateTimeConverter()  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.sellerId,_that.categoryId,_that.brandId,_that.locationId,_that.title,_that.description,_that.price,_that.condition,_that.quantity,_that.mediaCount,_that.attributes,_that.shippingOptions,_that.status,_that.visibility,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid sellerId, @UuidConverter()  Uuid categoryId, @UuidConverter()  Uuid? brandId, @UuidConverter()  Uuid? locationId,  String title,  String? description, @MoneyConverter()  Money price,  ListingCondition condition,  int quantity,  int mediaCount,  JsonMap attributes,  List<JsonMap> shippingOptions,  ListingStatus status,  ListingVisibility visibility, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt, @UtcDateTimeConverter()  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _Listing():
return $default(_that.id,_that.sellerId,_that.categoryId,_that.brandId,_that.locationId,_that.title,_that.description,_that.price,_that.condition,_that.quantity,_that.mediaCount,_that.attributes,_that.shippingOptions,_that.status,_that.visibility,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid sellerId, @UuidConverter()  Uuid categoryId, @UuidConverter()  Uuid? brandId, @UuidConverter()  Uuid? locationId,  String title,  String? description, @MoneyConverter()  Money price,  ListingCondition condition,  int quantity,  int mediaCount,  JsonMap attributes,  List<JsonMap> shippingOptions,  ListingStatus status,  ListingVisibility visibility, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt, @UtcDateTimeConverter()  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.sellerId,_that.categoryId,_that.brandId,_that.locationId,_that.title,_that.description,_that.price,_that.condition,_that.quantity,_that.mediaCount,_that.attributes,_that.shippingOptions,_that.status,_that.visibility,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Listing implements Listing {
  const _Listing({@UuidConverter() required this.id, @UuidConverter() required this.sellerId, @UuidConverter() required this.categoryId, @UuidConverter() this.brandId, @UuidConverter() this.locationId, required this.title, this.description, @MoneyConverter() required this.price, required this.condition, this.quantity = 1, this.mediaCount = 0, final  JsonMap attributes = const <String, dynamic>{}, final  List<JsonMap> shippingOptions = const <JsonMap>[], required this.status, required this.visibility, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt, @UtcDateTimeConverter() this.deletedAt}): _attributes = attributes,_shippingOptions = shippingOptions;
  factory _Listing.fromJson(Map<String, dynamic> json) => _$ListingFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid sellerId;
@override@UuidConverter() final  Uuid categoryId;
@override@UuidConverter() final  Uuid? brandId;
@override@UuidConverter() final  Uuid? locationId;
@override final  String title;
@override final  String? description;
@override@MoneyConverter() final  Money price;
@override final  ListingCondition condition;
@override@JsonKey() final  int quantity;
@override@JsonKey() final  int mediaCount;
 final  JsonMap _attributes;
@override@JsonKey() JsonMap get attributes {
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_attributes);
}

 final  List<JsonMap> _shippingOptions;
@override@JsonKey() List<JsonMap> get shippingOptions {
  if (_shippingOptions is EqualUnmodifiableListView) return _shippingOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shippingOptions);
}

@override final  ListingStatus status;
@override final  ListingVisibility visibility;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;
@override@UtcDateTimeConverter() final  DateTime? deletedAt;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingCopyWith<_Listing> get copyWith => __$ListingCopyWithImpl<_Listing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&const DeepCollectionEquality().equals(other._shippingOptions, _shippingOptions)&&(identical(other.status, status) || other.status == status)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,categoryId,brandId,locationId,title,description,price,condition,quantity,mediaCount,const DeepCollectionEquality().hash(_attributes),const DeepCollectionEquality().hash(_shippingOptions),status,visibility,createdAt,updatedAt,deletedAt);

@override
String toString() {
  return 'Listing(id: $id, sellerId: $sellerId, categoryId: $categoryId, brandId: $brandId, locationId: $locationId, title: $title, description: $description, price: $price, condition: $condition, quantity: $quantity, mediaCount: $mediaCount, attributes: $attributes, shippingOptions: $shippingOptions, status: $status, visibility: $visibility, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) _then) = __$ListingCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid sellerId,@UuidConverter() Uuid categoryId,@UuidConverter() Uuid? brandId,@UuidConverter() Uuid? locationId, String title, String? description,@MoneyConverter() Money price, ListingCondition condition, int quantity, int mediaCount, JsonMap attributes, List<JsonMap> shippingOptions, ListingStatus status, ListingVisibility visibility,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt,@UtcDateTimeConverter() DateTime? deletedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get sellerId;@override $UuidCopyWith<$Res> get categoryId;@override $UuidCopyWith<$Res>? get brandId;@override $UuidCopyWith<$Res>? get locationId;@override $MoneyCopyWith<$Res> get price;

}
/// @nodoc
class __$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(this._self, this._then);

  final _Listing _self;
  final $Res Function(_Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? categoryId = null,Object? brandId = freezed,Object? locationId = freezed,Object? title = null,Object? description = freezed,Object? price = null,Object? condition = null,Object? quantity = null,Object? mediaCount = null,Object? attributes = null,Object? shippingOptions = null,Object? status = null,Object? visibility = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(_Listing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as Uuid,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as Uuid,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as Uuid?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as Uuid?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Money,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ListingCondition,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as JsonMap,shippingOptions: null == shippingOptions ? _self._shippingOptions : shippingOptions // ignore: cast_nullable_to_non_nullable
as List<JsonMap>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as ListingVisibility,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get sellerId {
  
  return $UuidCopyWith<$Res>(_self.sellerId, (value) {
    return _then(_self.copyWith(sellerId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get categoryId {
  
  return $UuidCopyWith<$Res>(_self.categoryId, (value) {
    return _then(_self.copyWith(categoryId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get brandId {
    if (_self.brandId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.brandId!, (value) {
    return _then(_self.copyWith(brandId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res>? get locationId {
    if (_self.locationId == null) {
    return null;
  }

  return $UuidCopyWith<$Res>(_self.locationId!, (value) {
    return _then(_self.copyWith(locationId: value));
  });
}/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get price {
  
  return $MoneyCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// @nodoc
mixin _$ListingDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'seller_id') String get sellerId;@JsonKey(name: 'category_id') String get categoryId;@JsonKey(name: 'brand_id') String? get brandId;@JsonKey(name: 'location_id') String? get locationId;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'price_cents') int get priceCents;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'condition') String get condition;@JsonKey(name: 'quantity') int get quantity;@JsonKey(name: 'media_count') int get mediaCount;@JsonKey(name: 'attributes') Map<String, dynamic>? get attributes;@JsonKey(name: 'shipping_options') List<dynamic>? get shippingOptions;@JsonKey(name: 'status') String get status;@JsonKey(name: 'visibility') String get visibility;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'deleted_at') String? get deletedAt;
/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingDtoCopyWith<ListingDto> get copyWith => _$ListingDtoCopyWithImpl<ListingDto>(this as ListingDto, _$identity);

  /// Serializes this ListingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceCents, priceCents) || other.priceCents == priceCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&const DeepCollectionEquality().equals(other.shippingOptions, shippingOptions)&&(identical(other.status, status) || other.status == status)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sellerId,categoryId,brandId,locationId,title,description,priceCents,currency,condition,quantity,mediaCount,const DeepCollectionEquality().hash(attributes),const DeepCollectionEquality().hash(shippingOptions),status,visibility,createdAt,updatedAt,deletedAt]);

@override
String toString() {
  return 'ListingDto(id: $id, sellerId: $sellerId, categoryId: $categoryId, brandId: $brandId, locationId: $locationId, title: $title, description: $description, priceCents: $priceCents, currency: $currency, condition: $condition, quantity: $quantity, mediaCount: $mediaCount, attributes: $attributes, shippingOptions: $shippingOptions, status: $status, visibility: $visibility, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $ListingDtoCopyWith<$Res>  {
  factory $ListingDtoCopyWith(ListingDto value, $Res Function(ListingDto) _then) = _$ListingDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'seller_id') String sellerId,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'brand_id') String? brandId,@JsonKey(name: 'location_id') String? locationId,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'price_cents') int priceCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'condition') String condition,@JsonKey(name: 'quantity') int quantity,@JsonKey(name: 'media_count') int mediaCount,@JsonKey(name: 'attributes') Map<String, dynamic>? attributes,@JsonKey(name: 'shipping_options') List<dynamic>? shippingOptions,@JsonKey(name: 'status') String status,@JsonKey(name: 'visibility') String visibility,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'deleted_at') String? deletedAt
});




}
/// @nodoc
class _$ListingDtoCopyWithImpl<$Res>
    implements $ListingDtoCopyWith<$Res> {
  _$ListingDtoCopyWithImpl(this._self, this._then);

  final ListingDto _self;
  final $Res Function(ListingDto) _then;

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? categoryId = null,Object? brandId = freezed,Object? locationId = freezed,Object? title = null,Object? description = freezed,Object? priceCents = null,Object? currency = null,Object? condition = null,Object? quantity = null,Object? mediaCount = null,Object? attributes = freezed,Object? shippingOptions = freezed,Object? status = null,Object? visibility = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,shippingOptions: freezed == shippingOptions ? _self.shippingOptions : shippingOptions // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingDto].
extension ListingDtoPatterns on ListingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'brand_id')  String? brandId, @JsonKey(name: 'location_id')  String? locationId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'price_cents')  int priceCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'condition')  String condition, @JsonKey(name: 'quantity')  int quantity, @JsonKey(name: 'media_count')  int mediaCount, @JsonKey(name: 'attributes')  Map<String, dynamic>? attributes, @JsonKey(name: 'shipping_options')  List<dynamic>? shippingOptions, @JsonKey(name: 'status')  String status, @JsonKey(name: 'visibility')  String visibility, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'deleted_at')  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
return $default(_that.id,_that.sellerId,_that.categoryId,_that.brandId,_that.locationId,_that.title,_that.description,_that.priceCents,_that.currency,_that.condition,_that.quantity,_that.mediaCount,_that.attributes,_that.shippingOptions,_that.status,_that.visibility,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'brand_id')  String? brandId, @JsonKey(name: 'location_id')  String? locationId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'price_cents')  int priceCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'condition')  String condition, @JsonKey(name: 'quantity')  int quantity, @JsonKey(name: 'media_count')  int mediaCount, @JsonKey(name: 'attributes')  Map<String, dynamic>? attributes, @JsonKey(name: 'shipping_options')  List<dynamic>? shippingOptions, @JsonKey(name: 'status')  String status, @JsonKey(name: 'visibility')  String visibility, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'deleted_at')  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _ListingDto():
return $default(_that.id,_that.sellerId,_that.categoryId,_that.brandId,_that.locationId,_that.title,_that.description,_that.priceCents,_that.currency,_that.condition,_that.quantity,_that.mediaCount,_that.attributes,_that.shippingOptions,_that.status,_that.visibility,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'brand_id')  String? brandId, @JsonKey(name: 'location_id')  String? locationId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'price_cents')  int priceCents, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'condition')  String condition, @JsonKey(name: 'quantity')  int quantity, @JsonKey(name: 'media_count')  int mediaCount, @JsonKey(name: 'attributes')  Map<String, dynamic>? attributes, @JsonKey(name: 'shipping_options')  List<dynamic>? shippingOptions, @JsonKey(name: 'status')  String status, @JsonKey(name: 'visibility')  String visibility, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'deleted_at')  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
return $default(_that.id,_that.sellerId,_that.categoryId,_that.brandId,_that.locationId,_that.title,_that.description,_that.priceCents,_that.currency,_that.condition,_that.quantity,_that.mediaCount,_that.attributes,_that.shippingOptions,_that.status,_that.visibility,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingDto extends ListingDto {
  const _ListingDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'seller_id') required this.sellerId, @JsonKey(name: 'category_id') required this.categoryId, @JsonKey(name: 'brand_id') this.brandId, @JsonKey(name: 'location_id') this.locationId, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'price_cents') required this.priceCents, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'condition') required this.condition, @JsonKey(name: 'quantity') required this.quantity, @JsonKey(name: 'media_count') required this.mediaCount, @JsonKey(name: 'attributes') final  Map<String, dynamic>? attributes, @JsonKey(name: 'shipping_options') final  List<dynamic>? shippingOptions, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'visibility') required this.visibility, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'deleted_at') this.deletedAt}): _attributes = attributes,_shippingOptions = shippingOptions,super._();
  factory _ListingDto.fromJson(Map<String, dynamic> json) => _$ListingDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'seller_id') final  String sellerId;
@override@JsonKey(name: 'category_id') final  String categoryId;
@override@JsonKey(name: 'brand_id') final  String? brandId;
@override@JsonKey(name: 'location_id') final  String? locationId;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'price_cents') final  int priceCents;
@override@JsonKey(name: 'currency') final  String currency;
@override@JsonKey(name: 'condition') final  String condition;
@override@JsonKey(name: 'quantity') final  int quantity;
@override@JsonKey(name: 'media_count') final  int mediaCount;
 final  Map<String, dynamic>? _attributes;
@override@JsonKey(name: 'attributes') Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<dynamic>? _shippingOptions;
@override@JsonKey(name: 'shipping_options') List<dynamic>? get shippingOptions {
  final value = _shippingOptions;
  if (value == null) return null;
  if (_shippingOptions is EqualUnmodifiableListView) return _shippingOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'visibility') final  String visibility;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'deleted_at') final  String? deletedAt;

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingDtoCopyWith<_ListingDto> get copyWith => __$ListingDtoCopyWithImpl<_ListingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceCents, priceCents) || other.priceCents == priceCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&const DeepCollectionEquality().equals(other._shippingOptions, _shippingOptions)&&(identical(other.status, status) || other.status == status)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sellerId,categoryId,brandId,locationId,title,description,priceCents,currency,condition,quantity,mediaCount,const DeepCollectionEquality().hash(_attributes),const DeepCollectionEquality().hash(_shippingOptions),status,visibility,createdAt,updatedAt,deletedAt]);

@override
String toString() {
  return 'ListingDto(id: $id, sellerId: $sellerId, categoryId: $categoryId, brandId: $brandId, locationId: $locationId, title: $title, description: $description, priceCents: $priceCents, currency: $currency, condition: $condition, quantity: $quantity, mediaCount: $mediaCount, attributes: $attributes, shippingOptions: $shippingOptions, status: $status, visibility: $visibility, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$ListingDtoCopyWith<$Res> implements $ListingDtoCopyWith<$Res> {
  factory _$ListingDtoCopyWith(_ListingDto value, $Res Function(_ListingDto) _then) = __$ListingDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'seller_id') String sellerId,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'brand_id') String? brandId,@JsonKey(name: 'location_id') String? locationId,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'price_cents') int priceCents,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'condition') String condition,@JsonKey(name: 'quantity') int quantity,@JsonKey(name: 'media_count') int mediaCount,@JsonKey(name: 'attributes') Map<String, dynamic>? attributes,@JsonKey(name: 'shipping_options') List<dynamic>? shippingOptions,@JsonKey(name: 'status') String status,@JsonKey(name: 'visibility') String visibility,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'deleted_at') String? deletedAt
});




}
/// @nodoc
class __$ListingDtoCopyWithImpl<$Res>
    implements _$ListingDtoCopyWith<$Res> {
  __$ListingDtoCopyWithImpl(this._self, this._then);

  final _ListingDto _self;
  final $Res Function(_ListingDto) _then;

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? categoryId = null,Object? brandId = freezed,Object? locationId = freezed,Object? title = null,Object? description = freezed,Object? priceCents = null,Object? currency = null,Object? condition = null,Object? quantity = null,Object? mediaCount = null,Object? attributes = freezed,Object? shippingOptions = freezed,Object? status = null,Object? visibility = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(_ListingDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,shippingOptions: freezed == shippingOptions ? _self._shippingOptions : shippingOptions // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
