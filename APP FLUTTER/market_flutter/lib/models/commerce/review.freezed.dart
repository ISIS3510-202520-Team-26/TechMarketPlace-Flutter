// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Review {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get orderId;@UuidConverter() Uuid get raterId;@UuidConverter() Uuid get ratedUserId; ReviewRole get role; Rating get rating; String? get comment;@UtcDateTimeConverter() DateTime get createdAt;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.raterId, raterId) || other.raterId == raterId)&&(identical(other.ratedUserId, ratedUserId) || other.ratedUserId == ratedUserId)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,raterId,ratedUserId,role,rating,comment,createdAt);

@override
String toString() {
  return 'Review(id: $id, orderId: $orderId, raterId: $raterId, ratedUserId: $ratedUserId, role: $role, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId,@UuidConverter() Uuid raterId,@UuidConverter() Uuid ratedUserId, ReviewRole role, Rating rating, String? comment,@UtcDateTimeConverter() DateTime createdAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get orderId;$UuidCopyWith<$Res> get raterId;$UuidCopyWith<$Res> get ratedUserId;$RatingCopyWith<$Res> get rating;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? raterId = null,Object? ratedUserId = null,Object? role = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,raterId: null == raterId ? _self.raterId : raterId // ignore: cast_nullable_to_non_nullable
as Uuid,ratedUserId: null == ratedUserId ? _self.ratedUserId : ratedUserId // ignore: cast_nullable_to_non_nullable
as Uuid,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ReviewRole,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Rating,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get raterId {
  
  return $UuidCopyWith<$Res>(_self.raterId, (value) {
    return _then(_self.copyWith(raterId: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get ratedUserId {
  
  return $UuidCopyWith<$Res>(_self.ratedUserId, (value) {
    return _then(_self.copyWith(ratedUserId: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingCopyWith<$Res> get rating {
  
  return $RatingCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId, @UuidConverter()  Uuid raterId, @UuidConverter()  Uuid ratedUserId,  ReviewRole role,  Rating rating,  String? comment, @UtcDateTimeConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.orderId,_that.raterId,_that.ratedUserId,_that.role,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId, @UuidConverter()  Uuid raterId, @UuidConverter()  Uuid ratedUserId,  ReviewRole role,  Rating rating,  String? comment, @UtcDateTimeConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.id,_that.orderId,_that.raterId,_that.ratedUserId,_that.role,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId, @UuidConverter()  Uuid raterId, @UuidConverter()  Uuid ratedUserId,  ReviewRole role,  Rating rating,  String? comment, @UtcDateTimeConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.orderId,_that.raterId,_that.ratedUserId,_that.role,_that.rating,_that.comment,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({@UuidConverter() required this.id, @UuidConverter() required this.orderId, @UuidConverter() required this.raterId, @UuidConverter() required this.ratedUserId, required this.role, required this.rating, this.comment, @UtcDateTimeConverter() required this.createdAt});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid orderId;
@override@UuidConverter() final  Uuid raterId;
@override@UuidConverter() final  Uuid ratedUserId;
@override final  ReviewRole role;
@override final  Rating rating;
@override final  String? comment;
@override@UtcDateTimeConverter() final  DateTime createdAt;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.raterId, raterId) || other.raterId == raterId)&&(identical(other.ratedUserId, ratedUserId) || other.ratedUserId == ratedUserId)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,raterId,ratedUserId,role,rating,comment,createdAt);

@override
String toString() {
  return 'Review(id: $id, orderId: $orderId, raterId: $raterId, ratedUserId: $ratedUserId, role: $role, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId,@UuidConverter() Uuid raterId,@UuidConverter() Uuid ratedUserId, ReviewRole role, Rating rating, String? comment,@UtcDateTimeConverter() DateTime createdAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get orderId;@override $UuidCopyWith<$Res> get raterId;@override $UuidCopyWith<$Res> get ratedUserId;@override $RatingCopyWith<$Res> get rating;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? raterId = null,Object? ratedUserId = null,Object? role = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,}) {
  return _then(_Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,raterId: null == raterId ? _self.raterId : raterId // ignore: cast_nullable_to_non_nullable
as Uuid,ratedUserId: null == ratedUserId ? _self.ratedUserId : ratedUserId // ignore: cast_nullable_to_non_nullable
as Uuid,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ReviewRole,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Rating,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get raterId {
  
  return $UuidCopyWith<$Res>(_self.raterId, (value) {
    return _then(_self.copyWith(raterId: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get ratedUserId {
  
  return $UuidCopyWith<$Res>(_self.ratedUserId, (value) {
    return _then(_self.copyWith(ratedUserId: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingCopyWith<$Res> get rating {
  
  return $RatingCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// @nodoc
mixin _$ReviewDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'rater_id') String get raterId;@JsonKey(name: 'rated_user_id') String get ratedUserId;@JsonKey(name: 'role') String get role;@JsonKey(name: 'rating') int get rating;@JsonKey(name: 'comment') String? get comment;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<ReviewDto> get copyWith => _$ReviewDtoCopyWithImpl<ReviewDto>(this as ReviewDto, _$identity);

  /// Serializes this ReviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.raterId, raterId) || other.raterId == raterId)&&(identical(other.ratedUserId, ratedUserId) || other.ratedUserId == ratedUserId)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,raterId,ratedUserId,role,rating,comment,createdAt);

@override
String toString() {
  return 'ReviewDto(id: $id, orderId: $orderId, raterId: $raterId, ratedUserId: $ratedUserId, role: $role, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReviewDtoCopyWith<$Res>  {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) _then) = _$ReviewDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'rater_id') String raterId,@JsonKey(name: 'rated_user_id') String ratedUserId,@JsonKey(name: 'role') String role,@JsonKey(name: 'rating') int rating,@JsonKey(name: 'comment') String? comment,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res>
    implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._self, this._then);

  final ReviewDto _self;
  final $Res Function(ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? raterId = null,Object? ratedUserId = null,Object? role = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,raterId: null == raterId ? _self.raterId : raterId // ignore: cast_nullable_to_non_nullable
as String,ratedUserId: null == ratedUserId ? _self.ratedUserId : ratedUserId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewDto].
extension ReviewDtoPatterns on ReviewDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'rater_id')  String raterId, @JsonKey(name: 'rated_user_id')  String ratedUserId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'rating')  int rating, @JsonKey(name: 'comment')  String? comment, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.id,_that.orderId,_that.raterId,_that.ratedUserId,_that.role,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'rater_id')  String raterId, @JsonKey(name: 'rated_user_id')  String ratedUserId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'rating')  int rating, @JsonKey(name: 'comment')  String? comment, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReviewDto():
return $default(_that.id,_that.orderId,_that.raterId,_that.ratedUserId,_that.role,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'rater_id')  String raterId, @JsonKey(name: 'rated_user_id')  String ratedUserId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'rating')  int rating, @JsonKey(name: 'comment')  String? comment, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.id,_that.orderId,_that.raterId,_that.ratedUserId,_that.role,_that.rating,_that.comment,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewDto extends ReviewDto {
  const _ReviewDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'rater_id') required this.raterId, @JsonKey(name: 'rated_user_id') required this.ratedUserId, @JsonKey(name: 'role') required this.role, @JsonKey(name: 'rating') required this.rating, @JsonKey(name: 'comment') this.comment, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _ReviewDto.fromJson(Map<String, dynamic> json) => _$ReviewDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'rater_id') final  String raterId;
@override@JsonKey(name: 'rated_user_id') final  String ratedUserId;
@override@JsonKey(name: 'role') final  String role;
@override@JsonKey(name: 'rating') final  int rating;
@override@JsonKey(name: 'comment') final  String? comment;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDtoCopyWith<_ReviewDto> get copyWith => __$ReviewDtoCopyWithImpl<_ReviewDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.raterId, raterId) || other.raterId == raterId)&&(identical(other.ratedUserId, ratedUserId) || other.ratedUserId == ratedUserId)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,raterId,ratedUserId,role,rating,comment,createdAt);

@override
String toString() {
  return 'ReviewDto(id: $id, orderId: $orderId, raterId: $raterId, ratedUserId: $ratedUserId, role: $role, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$ReviewDtoCopyWith(_ReviewDto value, $Res Function(_ReviewDto) _then) = __$ReviewDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'rater_id') String raterId,@JsonKey(name: 'rated_user_id') String ratedUserId,@JsonKey(name: 'role') String role,@JsonKey(name: 'rating') int rating,@JsonKey(name: 'comment') String? comment,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ReviewDtoCopyWithImpl<$Res>
    implements _$ReviewDtoCopyWith<$Res> {
  __$ReviewDtoCopyWithImpl(this._self, this._then);

  final _ReviewDto _self;
  final $Res Function(_ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? raterId = null,Object? ratedUserId = null,Object? role = null,Object? rating = null,Object? comment = freezed,Object? createdAt = null,}) {
  return _then(_ReviewDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,raterId: null == raterId ? _self.raterId : raterId // ignore: cast_nullable_to_non_nullable
as String,ratedUserId: null == ratedUserId ? _self.ratedUserId : ratedUserId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
