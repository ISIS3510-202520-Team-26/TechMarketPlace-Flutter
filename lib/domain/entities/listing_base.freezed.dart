// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListingBase {

 String get id; String get sellerId; Money get price; Campus get campus; List<String> get photos; Object get details;
/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingBaseCopyWith<ListingBase> get copyWith => _$ListingBaseCopyWithImpl<ListingBase>(this as ListingBase, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingBase&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.campus, campus) || other.campus == campus)&&const DeepCollectionEquality().equals(other.photos, photos)&&const DeepCollectionEquality().equals(other.details, details));
}


@override
int get hashCode => Object.hash(runtimeType,id,sellerId,price,campus,const DeepCollectionEquality().hash(photos),const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'ListingBase(id: $id, sellerId: $sellerId, price: $price, campus: $campus, photos: $photos, details: $details)';
}


}

/// @nodoc
abstract mixin class $ListingBaseCopyWith<$Res>  {
  factory $ListingBaseCopyWith(ListingBase value, $Res Function(ListingBase) _then) = _$ListingBaseCopyWithImpl;
@useResult
$Res call({
 String id, String sellerId, Money price, Campus campus, List<String> photos
});


$MoneyCopyWith<$Res> get price;$CampusCopyWith<$Res> get campus;

}
/// @nodoc
class _$ListingBaseCopyWithImpl<$Res>
    implements $ListingBaseCopyWith<$Res> {
  _$ListingBaseCopyWithImpl(this._self, this._then);

  final ListingBase _self;
  final $Res Function(ListingBase) _then;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? price = null,Object? campus = null,Object? photos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Money,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as Campus,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get price {
  
  return $MoneyCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampusCopyWith<$Res> get campus {
  
  return $CampusCopyWith<$Res>(_self.campus, (value) {
    return _then(_self.copyWith(campus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ListingBase].
extension ListingBasePatterns on ListingBase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BookListing value)?  book,TResult Function( MaterialListing value)?  material,TResult Function( TechListing value)?  tech,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BookListing() when book != null:
return book(_that);case MaterialListing() when material != null:
return material(_that);case TechListing() when tech != null:
return tech(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BookListing value)  book,required TResult Function( MaterialListing value)  material,required TResult Function( TechListing value)  tech,}){
final _that = this;
switch (_that) {
case BookListing():
return book(_that);case MaterialListing():
return material(_that);case TechListing():
return tech(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BookListing value)?  book,TResult? Function( MaterialListing value)?  material,TResult? Function( TechListing value)?  tech,}){
final _that = this;
switch (_that) {
case BookListing() when book != null:
return book(_that);case MaterialListing() when material != null:
return material(_that);case TechListing() when tech != null:
return tech(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  BookDetails details)?  book,TResult Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  AcademicMaterialDetails details)?  material,TResult Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  TechDetails details)?  tech,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BookListing() when book != null:
return book(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case MaterialListing() when material != null:
return material(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case TechListing() when tech != null:
return tech(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  BookDetails details)  book,required TResult Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  AcademicMaterialDetails details)  material,required TResult Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  TechDetails details)  tech,}) {final _that = this;
switch (_that) {
case BookListing():
return book(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case MaterialListing():
return material(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case TechListing():
return tech(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  BookDetails details)?  book,TResult? Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  AcademicMaterialDetails details)?  material,TResult? Function( String id,  String sellerId,  Money price,  Campus campus,  List<String> photos,  TechDetails details)?  tech,}) {final _that = this;
switch (_that) {
case BookListing() when book != null:
return book(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case MaterialListing() when material != null:
return material(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case TechListing() when tech != null:
return tech(_that.id,_that.sellerId,_that.price,_that.campus,_that.photos,_that.details);case _:
  return null;

}
}

}

/// @nodoc


class BookListing extends ListingBase {
  const BookListing({required this.id, required this.sellerId, required this.price, required this.campus, final  List<String> photos = const <String>[], required this.details}): _photos = photos,super._();
  

@override final  String id;
@override final  String sellerId;
@override final  Money price;
@override final  Campus campus;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  BookDetails details;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookListingCopyWith<BookListing> get copyWith => _$BookListingCopyWithImpl<BookListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookListing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.campus, campus) || other.campus == campus)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,id,sellerId,price,campus,const DeepCollectionEquality().hash(_photos),details);

@override
String toString() {
  return 'ListingBase.book(id: $id, sellerId: $sellerId, price: $price, campus: $campus, photos: $photos, details: $details)';
}


}

/// @nodoc
abstract mixin class $BookListingCopyWith<$Res> implements $ListingBaseCopyWith<$Res> {
  factory $BookListingCopyWith(BookListing value, $Res Function(BookListing) _then) = _$BookListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String sellerId, Money price, Campus campus, List<String> photos, BookDetails details
});


@override $MoneyCopyWith<$Res> get price;@override $CampusCopyWith<$Res> get campus;$BookDetailsCopyWith<$Res> get details;

}
/// @nodoc
class _$BookListingCopyWithImpl<$Res>
    implements $BookListingCopyWith<$Res> {
  _$BookListingCopyWithImpl(this._self, this._then);

  final BookListing _self;
  final $Res Function(BookListing) _then;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? price = null,Object? campus = null,Object? photos = null,Object? details = null,}) {
  return _then(BookListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Money,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as Campus,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as BookDetails,
  ));
}

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get price {
  
  return $MoneyCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampusCopyWith<$Res> get campus {
  
  return $CampusCopyWith<$Res>(_self.campus, (value) {
    return _then(_self.copyWith(campus: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookDetailsCopyWith<$Res> get details {
  
  return $BookDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class MaterialListing extends ListingBase {
  const MaterialListing({required this.id, required this.sellerId, required this.price, required this.campus, final  List<String> photos = const <String>[], required this.details}): _photos = photos,super._();
  

@override final  String id;
@override final  String sellerId;
@override final  Money price;
@override final  Campus campus;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  AcademicMaterialDetails details;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialListingCopyWith<MaterialListing> get copyWith => _$MaterialListingCopyWithImpl<MaterialListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialListing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.campus, campus) || other.campus == campus)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,id,sellerId,price,campus,const DeepCollectionEquality().hash(_photos),details);

@override
String toString() {
  return 'ListingBase.material(id: $id, sellerId: $sellerId, price: $price, campus: $campus, photos: $photos, details: $details)';
}


}

/// @nodoc
abstract mixin class $MaterialListingCopyWith<$Res> implements $ListingBaseCopyWith<$Res> {
  factory $MaterialListingCopyWith(MaterialListing value, $Res Function(MaterialListing) _then) = _$MaterialListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String sellerId, Money price, Campus campus, List<String> photos, AcademicMaterialDetails details
});


@override $MoneyCopyWith<$Res> get price;@override $CampusCopyWith<$Res> get campus;$AcademicMaterialDetailsCopyWith<$Res> get details;

}
/// @nodoc
class _$MaterialListingCopyWithImpl<$Res>
    implements $MaterialListingCopyWith<$Res> {
  _$MaterialListingCopyWithImpl(this._self, this._then);

  final MaterialListing _self;
  final $Res Function(MaterialListing) _then;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? price = null,Object? campus = null,Object? photos = null,Object? details = null,}) {
  return _then(MaterialListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Money,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as Campus,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as AcademicMaterialDetails,
  ));
}

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get price {
  
  return $MoneyCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampusCopyWith<$Res> get campus {
  
  return $CampusCopyWith<$Res>(_self.campus, (value) {
    return _then(_self.copyWith(campus: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicMaterialDetailsCopyWith<$Res> get details {
  
  return $AcademicMaterialDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

/// @nodoc


class TechListing extends ListingBase {
  const TechListing({required this.id, required this.sellerId, required this.price, required this.campus, final  List<String> photos = const <String>[], required this.details}): _photos = photos,super._();
  

@override final  String id;
@override final  String sellerId;
@override final  Money price;
@override final  Campus campus;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  TechDetails details;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechListingCopyWith<TechListing> get copyWith => _$TechListingCopyWithImpl<TechListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechListing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.campus, campus) || other.campus == campus)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.details, details) || other.details == details));
}


@override
int get hashCode => Object.hash(runtimeType,id,sellerId,price,campus,const DeepCollectionEquality().hash(_photos),details);

@override
String toString() {
  return 'ListingBase.tech(id: $id, sellerId: $sellerId, price: $price, campus: $campus, photos: $photos, details: $details)';
}


}

/// @nodoc
abstract mixin class $TechListingCopyWith<$Res> implements $ListingBaseCopyWith<$Res> {
  factory $TechListingCopyWith(TechListing value, $Res Function(TechListing) _then) = _$TechListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String sellerId, Money price, Campus campus, List<String> photos, TechDetails details
});


@override $MoneyCopyWith<$Res> get price;@override $CampusCopyWith<$Res> get campus;$TechDetailsCopyWith<$Res> get details;

}
/// @nodoc
class _$TechListingCopyWithImpl<$Res>
    implements $TechListingCopyWith<$Res> {
  _$TechListingCopyWithImpl(this._self, this._then);

  final TechListing _self;
  final $Res Function(TechListing) _then;

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? price = null,Object? campus = null,Object? photos = null,Object? details = null,}) {
  return _then(TechListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Money,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as Campus,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as TechDetails,
  ));
}

/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get price {
  
  return $MoneyCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampusCopyWith<$Res> get campus {
  
  return $CampusCopyWith<$Res>(_self.campus, (value) {
    return _then(_self.copyWith(campus: value));
  });
}/// Create a copy of ListingBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechDetailsCopyWith<$Res> get details {
  
  return $TechDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
