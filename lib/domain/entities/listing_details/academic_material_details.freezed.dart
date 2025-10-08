// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_material_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AcademicMaterialDetails {

 AcademicMaterialType get materialType; String? get courseCode; String? get semester; String? get instructor; String? get condition; String? get title;
/// Create a copy of AcademicMaterialDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicMaterialDetailsCopyWith<AcademicMaterialDetails> get copyWith => _$AcademicMaterialDetailsCopyWithImpl<AcademicMaterialDetails>(this as AcademicMaterialDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicMaterialDetails&&(identical(other.materialType, materialType) || other.materialType == materialType)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.semester, semester) || other.semester == semester)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,materialType,courseCode,semester,instructor,condition,title);

@override
String toString() {
  return 'AcademicMaterialDetails(materialType: $materialType, courseCode: $courseCode, semester: $semester, instructor: $instructor, condition: $condition, title: $title)';
}


}

/// @nodoc
abstract mixin class $AcademicMaterialDetailsCopyWith<$Res>  {
  factory $AcademicMaterialDetailsCopyWith(AcademicMaterialDetails value, $Res Function(AcademicMaterialDetails) _then) = _$AcademicMaterialDetailsCopyWithImpl;
@useResult
$Res call({
 AcademicMaterialType materialType, String? courseCode, String? semester, String? instructor, String? condition, String? title
});




}
/// @nodoc
class _$AcademicMaterialDetailsCopyWithImpl<$Res>
    implements $AcademicMaterialDetailsCopyWith<$Res> {
  _$AcademicMaterialDetailsCopyWithImpl(this._self, this._then);

  final AcademicMaterialDetails _self;
  final $Res Function(AcademicMaterialDetails) _then;

/// Create a copy of AcademicMaterialDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materialType = null,Object? courseCode = freezed,Object? semester = freezed,Object? instructor = freezed,Object? condition = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
materialType: null == materialType ? _self.materialType : materialType // ignore: cast_nullable_to_non_nullable
as AcademicMaterialType,courseCode: freezed == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String?,semester: freezed == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String?,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicMaterialDetails].
extension AcademicMaterialDetailsPatterns on AcademicMaterialDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicMaterialDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicMaterialDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicMaterialDetails value)  $default,){
final _that = this;
switch (_that) {
case _AcademicMaterialDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicMaterialDetails value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicMaterialDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AcademicMaterialType materialType,  String? courseCode,  String? semester,  String? instructor,  String? condition,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicMaterialDetails() when $default != null:
return $default(_that.materialType,_that.courseCode,_that.semester,_that.instructor,_that.condition,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AcademicMaterialType materialType,  String? courseCode,  String? semester,  String? instructor,  String? condition,  String? title)  $default,) {final _that = this;
switch (_that) {
case _AcademicMaterialDetails():
return $default(_that.materialType,_that.courseCode,_that.semester,_that.instructor,_that.condition,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AcademicMaterialType materialType,  String? courseCode,  String? semester,  String? instructor,  String? condition,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _AcademicMaterialDetails() when $default != null:
return $default(_that.materialType,_that.courseCode,_that.semester,_that.instructor,_that.condition,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _AcademicMaterialDetails extends AcademicMaterialDetails {
  const _AcademicMaterialDetails({required this.materialType, this.courseCode, this.semester, this.instructor, this.condition, this.title}): super._();
  

@override final  AcademicMaterialType materialType;
@override final  String? courseCode;
@override final  String? semester;
@override final  String? instructor;
@override final  String? condition;
@override final  String? title;

/// Create a copy of AcademicMaterialDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicMaterialDetailsCopyWith<_AcademicMaterialDetails> get copyWith => __$AcademicMaterialDetailsCopyWithImpl<_AcademicMaterialDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicMaterialDetails&&(identical(other.materialType, materialType) || other.materialType == materialType)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.semester, semester) || other.semester == semester)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,materialType,courseCode,semester,instructor,condition,title);

@override
String toString() {
  return 'AcademicMaterialDetails(materialType: $materialType, courseCode: $courseCode, semester: $semester, instructor: $instructor, condition: $condition, title: $title)';
}


}

/// @nodoc
abstract mixin class _$AcademicMaterialDetailsCopyWith<$Res> implements $AcademicMaterialDetailsCopyWith<$Res> {
  factory _$AcademicMaterialDetailsCopyWith(_AcademicMaterialDetails value, $Res Function(_AcademicMaterialDetails) _then) = __$AcademicMaterialDetailsCopyWithImpl;
@override @useResult
$Res call({
 AcademicMaterialType materialType, String? courseCode, String? semester, String? instructor, String? condition, String? title
});




}
/// @nodoc
class __$AcademicMaterialDetailsCopyWithImpl<$Res>
    implements _$AcademicMaterialDetailsCopyWith<$Res> {
  __$AcademicMaterialDetailsCopyWithImpl(this._self, this._then);

  final _AcademicMaterialDetails _self;
  final $Res Function(_AcademicMaterialDetails) _then;

/// Create a copy of AcademicMaterialDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? materialType = null,Object? courseCode = freezed,Object? semester = freezed,Object? instructor = freezed,Object? condition = freezed,Object? title = freezed,}) {
  return _then(_AcademicMaterialDetails(
materialType: null == materialType ? _self.materialType : materialType // ignore: cast_nullable_to_non_nullable
as AcademicMaterialType,courseCode: freezed == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String?,semester: freezed == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String?,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
