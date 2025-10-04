// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dispute {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get orderId; DisputeActor get openedBy; DisputeReason get reason; String? get description; DisputeStatus get status; String? get resolutionNotes;@UtcDateTimeConverter() DateTime get openedAt;@UtcDateTimeConverter() DateTime? get closedAt;
/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeCopyWith<Dispute> get copyWith => _$DisputeCopyWithImpl<Dispute>(this as Dispute, _$identity);

  /// Serializes this Dispute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dispute&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.openedBy, openedBy) || other.openedBy == openedBy)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,openedBy,reason,description,status,resolutionNotes,openedAt,closedAt);

@override
String toString() {
  return 'Dispute(id: $id, orderId: $orderId, openedBy: $openedBy, reason: $reason, description: $description, status: $status, resolutionNotes: $resolutionNotes, openedAt: $openedAt, closedAt: $closedAt)';
}


}

/// @nodoc
abstract mixin class $DisputeCopyWith<$Res>  {
  factory $DisputeCopyWith(Dispute value, $Res Function(Dispute) _then) = _$DisputeCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId, DisputeActor openedBy, DisputeReason reason, String? description, DisputeStatus status, String? resolutionNotes,@UtcDateTimeConverter() DateTime openedAt,@UtcDateTimeConverter() DateTime? closedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get orderId;

}
/// @nodoc
class _$DisputeCopyWithImpl<$Res>
    implements $DisputeCopyWith<$Res> {
  _$DisputeCopyWithImpl(this._self, this._then);

  final Dispute _self;
  final $Res Function(Dispute) _then;

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? openedBy = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? openedAt = null,Object? closedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,openedBy: null == openedBy ? _self.openedBy : openedBy // ignore: cast_nullable_to_non_nullable
as DisputeActor,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as DisputeReason,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DisputeStatus,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}
}


/// Adds pattern-matching-related methods to [Dispute].
extension DisputePatterns on Dispute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dispute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dispute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dispute value)  $default,){
final _that = this;
switch (_that) {
case _Dispute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dispute value)?  $default,){
final _that = this;
switch (_that) {
case _Dispute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  DisputeActor openedBy,  DisputeReason reason,  String? description,  DisputeStatus status,  String? resolutionNotes, @UtcDateTimeConverter()  DateTime openedAt, @UtcDateTimeConverter()  DateTime? closedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dispute() when $default != null:
return $default(_that.id,_that.orderId,_that.openedBy,_that.reason,_that.description,_that.status,_that.resolutionNotes,_that.openedAt,_that.closedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  DisputeActor openedBy,  DisputeReason reason,  String? description,  DisputeStatus status,  String? resolutionNotes, @UtcDateTimeConverter()  DateTime openedAt, @UtcDateTimeConverter()  DateTime? closedAt)  $default,) {final _that = this;
switch (_that) {
case _Dispute():
return $default(_that.id,_that.orderId,_that.openedBy,_that.reason,_that.description,_that.status,_that.resolutionNotes,_that.openedAt,_that.closedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid orderId,  DisputeActor openedBy,  DisputeReason reason,  String? description,  DisputeStatus status,  String? resolutionNotes, @UtcDateTimeConverter()  DateTime openedAt, @UtcDateTimeConverter()  DateTime? closedAt)?  $default,) {final _that = this;
switch (_that) {
case _Dispute() when $default != null:
return $default(_that.id,_that.orderId,_that.openedBy,_that.reason,_that.description,_that.status,_that.resolutionNotes,_that.openedAt,_that.closedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Dispute implements Dispute {
  const _Dispute({@UuidConverter() required this.id, @UuidConverter() required this.orderId, required this.openedBy, required this.reason, this.description, required this.status, this.resolutionNotes, @UtcDateTimeConverter() required this.openedAt, @UtcDateTimeConverter() this.closedAt});
  factory _Dispute.fromJson(Map<String, dynamic> json) => _$DisputeFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid orderId;
@override final  DisputeActor openedBy;
@override final  DisputeReason reason;
@override final  String? description;
@override final  DisputeStatus status;
@override final  String? resolutionNotes;
@override@UtcDateTimeConverter() final  DateTime openedAt;
@override@UtcDateTimeConverter() final  DateTime? closedAt;

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeCopyWith<_Dispute> get copyWith => __$DisputeCopyWithImpl<_Dispute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dispute&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.openedBy, openedBy) || other.openedBy == openedBy)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,openedBy,reason,description,status,resolutionNotes,openedAt,closedAt);

@override
String toString() {
  return 'Dispute(id: $id, orderId: $orderId, openedBy: $openedBy, reason: $reason, description: $description, status: $status, resolutionNotes: $resolutionNotes, openedAt: $openedAt, closedAt: $closedAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeCopyWith<$Res> implements $DisputeCopyWith<$Res> {
  factory _$DisputeCopyWith(_Dispute value, $Res Function(_Dispute) _then) = __$DisputeCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid orderId, DisputeActor openedBy, DisputeReason reason, String? description, DisputeStatus status, String? resolutionNotes,@UtcDateTimeConverter() DateTime openedAt,@UtcDateTimeConverter() DateTime? closedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get orderId;

}
/// @nodoc
class __$DisputeCopyWithImpl<$Res>
    implements _$DisputeCopyWith<$Res> {
  __$DisputeCopyWithImpl(this._self, this._then);

  final _Dispute _self;
  final $Res Function(_Dispute) _then;

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? openedBy = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? openedAt = null,Object? closedAt = freezed,}) {
  return _then(_Dispute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as Uuid,openedBy: null == openedBy ? _self.openedBy : openedBy // ignore: cast_nullable_to_non_nullable
as DisputeActor,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as DisputeReason,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DisputeStatus,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get orderId {
  
  return $UuidCopyWith<$Res>(_self.orderId, (value) {
    return _then(_self.copyWith(orderId: value));
  });
}
}


/// @nodoc
mixin _$DisputeDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'opened_by') String get openedBy;@JsonKey(name: 'reason') String get reason;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'status') String get status;@JsonKey(name: 'resolution_notes') String? get resolutionNotes;@JsonKey(name: 'opened_at') String get openedAt;@JsonKey(name: 'closed_at') String? get closedAt;
/// Create a copy of DisputeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeDtoCopyWith<DisputeDto> get copyWith => _$DisputeDtoCopyWithImpl<DisputeDto>(this as DisputeDto, _$identity);

  /// Serializes this DisputeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.openedBy, openedBy) || other.openedBy == openedBy)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,openedBy,reason,description,status,resolutionNotes,openedAt,closedAt);

@override
String toString() {
  return 'DisputeDto(id: $id, orderId: $orderId, openedBy: $openedBy, reason: $reason, description: $description, status: $status, resolutionNotes: $resolutionNotes, openedAt: $openedAt, closedAt: $closedAt)';
}


}

/// @nodoc
abstract mixin class $DisputeDtoCopyWith<$Res>  {
  factory $DisputeDtoCopyWith(DisputeDto value, $Res Function(DisputeDto) _then) = _$DisputeDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'opened_by') String openedBy,@JsonKey(name: 'reason') String reason,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String status,@JsonKey(name: 'resolution_notes') String? resolutionNotes,@JsonKey(name: 'opened_at') String openedAt,@JsonKey(name: 'closed_at') String? closedAt
});




}
/// @nodoc
class _$DisputeDtoCopyWithImpl<$Res>
    implements $DisputeDtoCopyWith<$Res> {
  _$DisputeDtoCopyWithImpl(this._self, this._then);

  final DisputeDto _self;
  final $Res Function(DisputeDto) _then;

/// Create a copy of DisputeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? openedBy = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? openedAt = null,Object? closedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,openedBy: null == openedBy ? _self.openedBy : openedBy // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as String,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeDto].
extension DisputeDtoPatterns on DisputeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'opened_by')  String openedBy, @JsonKey(name: 'reason')  String reason, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'resolution_notes')  String? resolutionNotes, @JsonKey(name: 'opened_at')  String openedAt, @JsonKey(name: 'closed_at')  String? closedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeDto() when $default != null:
return $default(_that.id,_that.orderId,_that.openedBy,_that.reason,_that.description,_that.status,_that.resolutionNotes,_that.openedAt,_that.closedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'opened_by')  String openedBy, @JsonKey(name: 'reason')  String reason, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'resolution_notes')  String? resolutionNotes, @JsonKey(name: 'opened_at')  String openedAt, @JsonKey(name: 'closed_at')  String? closedAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeDto():
return $default(_that.id,_that.orderId,_that.openedBy,_that.reason,_that.description,_that.status,_that.resolutionNotes,_that.openedAt,_that.closedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'opened_by')  String openedBy, @JsonKey(name: 'reason')  String reason, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'resolution_notes')  String? resolutionNotes, @JsonKey(name: 'opened_at')  String openedAt, @JsonKey(name: 'closed_at')  String? closedAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeDto() when $default != null:
return $default(_that.id,_that.orderId,_that.openedBy,_that.reason,_that.description,_that.status,_that.resolutionNotes,_that.openedAt,_that.closedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeDto extends DisputeDto {
  const _DisputeDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'opened_by') required this.openedBy, @JsonKey(name: 'reason') required this.reason, @JsonKey(name: 'description') this.description, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'resolution_notes') this.resolutionNotes, @JsonKey(name: 'opened_at') required this.openedAt, @JsonKey(name: 'closed_at') this.closedAt}): super._();
  factory _DisputeDto.fromJson(Map<String, dynamic> json) => _$DisputeDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'opened_by') final  String openedBy;
@override@JsonKey(name: 'reason') final  String reason;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'resolution_notes') final  String? resolutionNotes;
@override@JsonKey(name: 'opened_at') final  String openedAt;
@override@JsonKey(name: 'closed_at') final  String? closedAt;

/// Create a copy of DisputeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeDtoCopyWith<_DisputeDto> get copyWith => __$DisputeDtoCopyWithImpl<_DisputeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.openedBy, openedBy) || other.openedBy == openedBy)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,openedBy,reason,description,status,resolutionNotes,openedAt,closedAt);

@override
String toString() {
  return 'DisputeDto(id: $id, orderId: $orderId, openedBy: $openedBy, reason: $reason, description: $description, status: $status, resolutionNotes: $resolutionNotes, openedAt: $openedAt, closedAt: $closedAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeDtoCopyWith<$Res> implements $DisputeDtoCopyWith<$Res> {
  factory _$DisputeDtoCopyWith(_DisputeDto value, $Res Function(_DisputeDto) _then) = __$DisputeDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'opened_by') String openedBy,@JsonKey(name: 'reason') String reason,@JsonKey(name: 'description') String? description,@JsonKey(name: 'status') String status,@JsonKey(name: 'resolution_notes') String? resolutionNotes,@JsonKey(name: 'opened_at') String openedAt,@JsonKey(name: 'closed_at') String? closedAt
});




}
/// @nodoc
class __$DisputeDtoCopyWithImpl<$Res>
    implements _$DisputeDtoCopyWith<$Res> {
  __$DisputeDtoCopyWithImpl(this._self, this._then);

  final _DisputeDto _self;
  final $Res Function(_DisputeDto) _then;

/// Create a copy of DisputeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? openedBy = null,Object? reason = null,Object? description = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? openedAt = null,Object? closedAt = freezed,}) {
  return _then(_DisputeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,openedBy: null == openedBy ? _self.openedBy : openedBy // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as String,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
