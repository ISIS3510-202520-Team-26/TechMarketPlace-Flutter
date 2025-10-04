// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abuse_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbuseReport {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get reporterId; AbuseTarget get targetType;@UuidConverter() Uuid get targetId; AbuseReason get reason; String? get description; AbuseStatus get status;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime? get resolvedAt;
/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbuseReportCopyWith<AbuseReport> get copyWith => _$AbuseReportCopyWithImpl<AbuseReport>(this as AbuseReport, _$identity);

  /// Serializes this AbuseReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbuseReport&&(identical(other.id, id) || other.id == id)&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reporterId,targetType,targetId,reason,description,status,createdAt,resolvedAt);

@override
String toString() {
  return 'AbuseReport(id: $id, reporterId: $reporterId, targetType: $targetType, targetId: $targetId, reason: $reason, description: $description, status: $status, createdAt: $createdAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class $AbuseReportCopyWith<$Res>  {
  factory $AbuseReportCopyWith(AbuseReport value, $Res Function(AbuseReport) _then) = _$AbuseReportCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid reporterId, AbuseTarget targetType,@UuidConverter() Uuid targetId, AbuseReason reason, String? description, AbuseStatus status,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime? resolvedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get reporterId;$UuidCopyWith<$Res> get targetId;

}
/// @nodoc
class _$AbuseReportCopyWithImpl<$Res>
    implements $AbuseReportCopyWith<$Res> {
  _$AbuseReportCopyWithImpl(this._self, this._then);

  final AbuseReport _self;
  final $Res Function(AbuseReport) _then;

/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reporterId = null,Object? targetType = null,Object? targetId = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? createdAt = null,Object? resolvedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as Uuid,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as AbuseTarget,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as Uuid,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as AbuseReason,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AbuseStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get reporterId {
  
  return $UuidCopyWith<$Res>(_self.reporterId, (value) {
    return _then(_self.copyWith(reporterId: value));
  });
}/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get targetId {
  
  return $UuidCopyWith<$Res>(_self.targetId, (value) {
    return _then(_self.copyWith(targetId: value));
  });
}
}


/// Adds pattern-matching-related methods to [AbuseReport].
extension AbuseReportPatterns on AbuseReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbuseReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbuseReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbuseReport value)  $default,){
final _that = this;
switch (_that) {
case _AbuseReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbuseReport value)?  $default,){
final _that = this;
switch (_that) {
case _AbuseReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid reporterId,  AbuseTarget targetType, @UuidConverter()  Uuid targetId,  AbuseReason reason,  String? description,  AbuseStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime? resolvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbuseReport() when $default != null:
return $default(_that.id,_that.reporterId,_that.targetType,_that.targetId,_that.reason,_that.description,_that.status,_that.createdAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid reporterId,  AbuseTarget targetType, @UuidConverter()  Uuid targetId,  AbuseReason reason,  String? description,  AbuseStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime? resolvedAt)  $default,) {final _that = this;
switch (_that) {
case _AbuseReport():
return $default(_that.id,_that.reporterId,_that.targetType,_that.targetId,_that.reason,_that.description,_that.status,_that.createdAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid reporterId,  AbuseTarget targetType, @UuidConverter()  Uuid targetId,  AbuseReason reason,  String? description,  AbuseStatus status, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime? resolvedAt)?  $default,) {final _that = this;
switch (_that) {
case _AbuseReport() when $default != null:
return $default(_that.id,_that.reporterId,_that.targetType,_that.targetId,_that.reason,_that.description,_that.status,_that.createdAt,_that.resolvedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbuseReport implements AbuseReport {
  const _AbuseReport({@UuidConverter() required this.id, @UuidConverter() required this.reporterId, required this.targetType, @UuidConverter() required this.targetId, required this.reason, this.description, required this.status, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() this.resolvedAt});
  factory _AbuseReport.fromJson(Map<String, dynamic> json) => _$AbuseReportFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid reporterId;
@override final  AbuseTarget targetType;
@override@UuidConverter() final  Uuid targetId;
@override final  AbuseReason reason;
@override final  String? description;
@override final  AbuseStatus status;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime? resolvedAt;

/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbuseReportCopyWith<_AbuseReport> get copyWith => __$AbuseReportCopyWithImpl<_AbuseReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbuseReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbuseReport&&(identical(other.id, id) || other.id == id)&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reporterId,targetType,targetId,reason,description,status,createdAt,resolvedAt);

@override
String toString() {
  return 'AbuseReport(id: $id, reporterId: $reporterId, targetType: $targetType, targetId: $targetId, reason: $reason, description: $description, status: $status, createdAt: $createdAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class _$AbuseReportCopyWith<$Res> implements $AbuseReportCopyWith<$Res> {
  factory _$AbuseReportCopyWith(_AbuseReport value, $Res Function(_AbuseReport) _then) = __$AbuseReportCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid reporterId, AbuseTarget targetType,@UuidConverter() Uuid targetId, AbuseReason reason, String? description, AbuseStatus status,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime? resolvedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get reporterId;@override $UuidCopyWith<$Res> get targetId;

}
/// @nodoc
class __$AbuseReportCopyWithImpl<$Res>
    implements _$AbuseReportCopyWith<$Res> {
  __$AbuseReportCopyWithImpl(this._self, this._then);

  final _AbuseReport _self;
  final $Res Function(_AbuseReport) _then;

/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reporterId = null,Object? targetType = null,Object? targetId = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? createdAt = null,Object? resolvedAt = freezed,}) {
  return _then(_AbuseReport(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as Uuid,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as AbuseTarget,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as Uuid,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as AbuseReason,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AbuseStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get reporterId {
  
  return $UuidCopyWith<$Res>(_self.reporterId, (value) {
    return _then(_self.copyWith(reporterId: value));
  });
}/// Create a copy of AbuseReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get targetId {
  
  return $UuidCopyWith<$Res>(_self.targetId, (value) {
    return _then(_self.copyWith(targetId: value));
  });
}
}


/// @nodoc
mixin _$AbuseReportDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'reporter_id') String get reporterId;@JsonKey(name: 'target_type') String get targetType;@JsonKey(name: 'target_id') String get targetId;@JsonKey(name: 'reason') String get reason;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'status') String get status;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'resolved_at') String? get resolvedAt;
/// Create a copy of AbuseReportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbuseReportDtoCopyWith<AbuseReportDto> get copyWith => _$AbuseReportDtoCopyWithImpl<AbuseReportDto>(this as AbuseReportDto, _$identity);

  /// Serializes this AbuseReportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbuseReportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reporterId,targetType,targetId,reason,description,status,createdAt,resolvedAt);

@override
String toString() {
  return 'AbuseReportDto(id: $id, reporterId: $reporterId, targetType: $targetType, targetId: $targetId, reason: $reason, description: $description, status: $status, createdAt: $createdAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class $AbuseReportDtoCopyWith<$Res>  {
  factory $AbuseReportDtoCopyWith(AbuseReportDto value, $Res Function(AbuseReportDto) _then) = _$AbuseReportDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'reporter_id') String reporterId,@JsonKey(name: 'target_type') String targetType,@JsonKey(name: 'target_id') String targetId,@JsonKey(name: 'reason') String reason,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'resolved_at') String? resolvedAt
});




}
/// @nodoc
class _$AbuseReportDtoCopyWithImpl<$Res>
    implements $AbuseReportDtoCopyWith<$Res> {
  _$AbuseReportDtoCopyWithImpl(this._self, this._then);

  final AbuseReportDto _self;
  final $Res Function(AbuseReportDto) _then;

/// Create a copy of AbuseReportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reporterId = null,Object? targetType = null,Object? targetId = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? createdAt = null,Object? resolvedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AbuseReportDto].
extension AbuseReportDtoPatterns on AbuseReportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbuseReportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbuseReportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbuseReportDto value)  $default,){
final _that = this;
switch (_that) {
case _AbuseReportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbuseReportDto value)?  $default,){
final _that = this;
switch (_that) {
case _AbuseReportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'reporter_id')  String reporterId, @JsonKey(name: 'target_type')  String targetType, @JsonKey(name: 'target_id')  String targetId, @JsonKey(name: 'reason')  String reason, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'resolved_at')  String? resolvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbuseReportDto() when $default != null:
return $default(_that.id,_that.reporterId,_that.targetType,_that.targetId,_that.reason,_that.description,_that.status,_that.createdAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'reporter_id')  String reporterId, @JsonKey(name: 'target_type')  String targetType, @JsonKey(name: 'target_id')  String targetId, @JsonKey(name: 'reason')  String reason, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'resolved_at')  String? resolvedAt)  $default,) {final _that = this;
switch (_that) {
case _AbuseReportDto():
return $default(_that.id,_that.reporterId,_that.targetType,_that.targetId,_that.reason,_that.description,_that.status,_that.createdAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'reporter_id')  String reporterId, @JsonKey(name: 'target_type')  String targetType, @JsonKey(name: 'target_id')  String targetId, @JsonKey(name: 'reason')  String reason, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'resolved_at')  String? resolvedAt)?  $default,) {final _that = this;
switch (_that) {
case _AbuseReportDto() when $default != null:
return $default(_that.id,_that.reporterId,_that.targetType,_that.targetId,_that.reason,_that.description,_that.status,_that.createdAt,_that.resolvedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbuseReportDto extends AbuseReportDto {
  const _AbuseReportDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'reporter_id') required this.reporterId, @JsonKey(name: 'target_type') required this.targetType, @JsonKey(name: 'target_id') required this.targetId, @JsonKey(name: 'reason') required this.reason, @JsonKey(name: 'description') this.description, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'resolved_at') this.resolvedAt}): super._();
  factory _AbuseReportDto.fromJson(Map<String, dynamic> json) => _$AbuseReportDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'reporter_id') final  String reporterId;
@override@JsonKey(name: 'target_type') final  String targetType;
@override@JsonKey(name: 'target_id') final  String targetId;
@override@JsonKey(name: 'reason') final  String reason;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'resolved_at') final  String? resolvedAt;

/// Create a copy of AbuseReportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbuseReportDtoCopyWith<_AbuseReportDto> get copyWith => __$AbuseReportDtoCopyWithImpl<_AbuseReportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbuseReportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbuseReportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reporterId,targetType,targetId,reason,description,status,createdAt,resolvedAt);

@override
String toString() {
  return 'AbuseReportDto(id: $id, reporterId: $reporterId, targetType: $targetType, targetId: $targetId, reason: $reason, description: $description, status: $status, createdAt: $createdAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class _$AbuseReportDtoCopyWith<$Res> implements $AbuseReportDtoCopyWith<$Res> {
  factory _$AbuseReportDtoCopyWith(_AbuseReportDto value, $Res Function(_AbuseReportDto) _then) = __$AbuseReportDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'reporter_id') String reporterId,@JsonKey(name: 'target_type') String targetType,@JsonKey(name: 'target_id') String targetId,@JsonKey(name: 'reason') String reason,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'resolved_at') String? resolvedAt
});




}
/// @nodoc
class __$AbuseReportDtoCopyWithImpl<$Res>
    implements _$AbuseReportDtoCopyWith<$Res> {
  __$AbuseReportDtoCopyWithImpl(this._self, this._then);

  final _AbuseReportDto _self;
  final $Res Function(_AbuseReportDto) _then;

/// Create a copy of AbuseReportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reporterId = null,Object? targetType = null,Object? targetId = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? createdAt = null,Object? resolvedAt = freezed,}) {
  return _then(_AbuseReportDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
