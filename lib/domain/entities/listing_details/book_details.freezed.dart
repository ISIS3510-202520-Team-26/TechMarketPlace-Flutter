// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookDetails {

 String get isbn; String get title; String get author; String? get edition; BookCategory? get category;
/// Create a copy of BookDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookDetailsCopyWith<BookDetails> get copyWith => _$BookDetailsCopyWithImpl<BookDetails>(this as BookDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookDetails&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.edition, edition) || other.edition == edition)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,isbn,title,author,edition,category);

@override
String toString() {
  return 'BookDetails(isbn: $isbn, title: $title, author: $author, edition: $edition, category: $category)';
}


}

/// @nodoc
abstract mixin class $BookDetailsCopyWith<$Res>  {
  factory $BookDetailsCopyWith(BookDetails value, $Res Function(BookDetails) _then) = _$BookDetailsCopyWithImpl;
@useResult
$Res call({
 String isbn, String title, String author, String? edition, BookCategory? category
});




}
/// @nodoc
class _$BookDetailsCopyWithImpl<$Res>
    implements $BookDetailsCopyWith<$Res> {
  _$BookDetailsCopyWithImpl(this._self, this._then);

  final BookDetails _self;
  final $Res Function(BookDetails) _then;

/// Create a copy of BookDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isbn = null,Object? title = null,Object? author = null,Object? edition = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,edition: freezed == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BookCategory?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookDetails].
extension BookDetailsPatterns on BookDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookDetails value)  $default,){
final _that = this;
switch (_that) {
case _BookDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookDetails value)?  $default,){
final _that = this;
switch (_that) {
case _BookDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String isbn,  String title,  String author,  String? edition,  BookCategory? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookDetails() when $default != null:
return $default(_that.isbn,_that.title,_that.author,_that.edition,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String isbn,  String title,  String author,  String? edition,  BookCategory? category)  $default,) {final _that = this;
switch (_that) {
case _BookDetails():
return $default(_that.isbn,_that.title,_that.author,_that.edition,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String isbn,  String title,  String author,  String? edition,  BookCategory? category)?  $default,) {final _that = this;
switch (_that) {
case _BookDetails() when $default != null:
return $default(_that.isbn,_that.title,_that.author,_that.edition,_that.category);case _:
  return null;

}
}

}

/// @nodoc


class _BookDetails extends BookDetails {
  const _BookDetails({required this.isbn, required this.title, required this.author, this.edition, this.category}): super._();
  

@override final  String isbn;
@override final  String title;
@override final  String author;
@override final  String? edition;
@override final  BookCategory? category;

/// Create a copy of BookDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDetailsCopyWith<_BookDetails> get copyWith => __$BookDetailsCopyWithImpl<_BookDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDetails&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.edition, edition) || other.edition == edition)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,isbn,title,author,edition,category);

@override
String toString() {
  return 'BookDetails(isbn: $isbn, title: $title, author: $author, edition: $edition, category: $category)';
}


}

/// @nodoc
abstract mixin class _$BookDetailsCopyWith<$Res> implements $BookDetailsCopyWith<$Res> {
  factory _$BookDetailsCopyWith(_BookDetails value, $Res Function(_BookDetails) _then) = __$BookDetailsCopyWithImpl;
@override @useResult
$Res call({
 String isbn, String title, String author, String? edition, BookCategory? category
});




}
/// @nodoc
class __$BookDetailsCopyWithImpl<$Res>
    implements _$BookDetailsCopyWith<$Res> {
  __$BookDetailsCopyWithImpl(this._self, this._then);

  final _BookDetails _self;
  final $Res Function(_BookDetails) _then;

/// Create a copy of BookDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isbn = null,Object? title = null,Object? author = null,Object? edition = freezed,Object? category = freezed,}) {
  return _then(_BookDetails(
isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,edition: freezed == edition ? _self.edition : edition // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BookCategory?,
  ));
}


}

// dart format on
