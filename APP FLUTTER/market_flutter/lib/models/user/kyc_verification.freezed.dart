// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KycVerification {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get userId; String get provider; KycStatus get status; String? get documentType;/// Encrypted document number (base64-encoded bytes in transport).
 List<int>? get documentNumberEnc; List<String> get evidenceUrls; String? get notes;@UtcDateTimeConverter() DateTime get createdAt;@UtcDateTimeConverter() DateTime get updatedAt;
/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KycVerificationCopyWith<KycVerification> get copyWith => _$KycVerificationCopyWithImpl<KycVerification>(this as KycVerification, _$identity);

  /// Serializes this KycVerification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KycVerification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&const DeepCollectionEquality().equals(other.documentNumberEnc, documentNumberEnc)&&const DeepCollectionEquality().equals(other.evidenceUrls, evidenceUrls)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,provider,status,documentType,const DeepCollectionEquality().hash(documentNumberEnc),const DeepCollectionEquality().hash(evidenceUrls),notes,createdAt,updatedAt);

@override
String toString() {
  return 'KycVerification(id: $id, userId: $userId, provider: $provider, status: $status, documentType: $documentType, documentNumberEnc: $documentNumberEnc, evidenceUrls: $evidenceUrls, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $KycVerificationCopyWith<$Res>  {
  factory $KycVerificationCopyWith(KycVerification value, $Res Function(KycVerification) _then) = _$KycVerificationCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid userId, String provider, KycStatus status, String? documentType, List<int>? documentNumberEnc, List<String> evidenceUrls, String? notes,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get userId;

}
/// @nodoc
class _$KycVerificationCopyWithImpl<$Res>
    implements $KycVerificationCopyWith<$Res> {
  _$KycVerificationCopyWithImpl(this._self, this._then);

  final KycVerification _self;
  final $Res Function(KycVerification) _then;

/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? provider = null,Object? status = null,Object? documentType = freezed,Object? documentNumberEnc = freezed,Object? evidenceUrls = null,Object? notes = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as KycStatus,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,documentNumberEnc: freezed == documentNumberEnc ? _self.documentNumberEnc : documentNumberEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,evidenceUrls: null == evidenceUrls ? _self.evidenceUrls : evidenceUrls // ignore: cast_nullable_to_non_nullable
as List<String>,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [KycVerification].
extension KycVerificationPatterns on KycVerification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KycVerification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KycVerification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KycVerification value)  $default,){
final _that = this;
switch (_that) {
case _KycVerification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KycVerification value)?  $default,){
final _that = this;
switch (_that) {
case _KycVerification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid userId,  String provider,  KycStatus status,  String? documentType,  List<int>? documentNumberEnc,  List<String> evidenceUrls,  String? notes, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KycVerification() when $default != null:
return $default(_that.id,_that.userId,_that.provider,_that.status,_that.documentType,_that.documentNumberEnc,_that.evidenceUrls,_that.notes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid userId,  String provider,  KycStatus status,  String? documentType,  List<int>? documentNumberEnc,  List<String> evidenceUrls,  String? notes, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _KycVerification():
return $default(_that.id,_that.userId,_that.provider,_that.status,_that.documentType,_that.documentNumberEnc,_that.evidenceUrls,_that.notes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid userId,  String provider,  KycStatus status,  String? documentType,  List<int>? documentNumberEnc,  List<String> evidenceUrls,  String? notes, @UtcDateTimeConverter()  DateTime createdAt, @UtcDateTimeConverter()  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _KycVerification() when $default != null:
return $default(_that.id,_that.userId,_that.provider,_that.status,_that.documentType,_that.documentNumberEnc,_that.evidenceUrls,_that.notes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KycVerification implements KycVerification {
  const _KycVerification({@UuidConverter() required this.id, @UuidConverter() required this.userId, required this.provider, required this.status, this.documentType, final  List<int>? documentNumberEnc, final  List<String> evidenceUrls = const <String>[], this.notes, @UtcDateTimeConverter() required this.createdAt, @UtcDateTimeConverter() required this.updatedAt}): _documentNumberEnc = documentNumberEnc,_evidenceUrls = evidenceUrls;
  factory _KycVerification.fromJson(Map<String, dynamic> json) => _$KycVerificationFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid userId;
@override final  String provider;
@override final  KycStatus status;
@override final  String? documentType;
/// Encrypted document number (base64-encoded bytes in transport).
 final  List<int>? _documentNumberEnc;
/// Encrypted document number (base64-encoded bytes in transport).
@override List<int>? get documentNumberEnc {
  final value = _documentNumberEnc;
  if (value == null) return null;
  if (_documentNumberEnc is EqualUnmodifiableListView) return _documentNumberEnc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String> _evidenceUrls;
@override@JsonKey() List<String> get evidenceUrls {
  if (_evidenceUrls is EqualUnmodifiableListView) return _evidenceUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidenceUrls);
}

@override final  String? notes;
@override@UtcDateTimeConverter() final  DateTime createdAt;
@override@UtcDateTimeConverter() final  DateTime updatedAt;

/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycVerificationCopyWith<_KycVerification> get copyWith => __$KycVerificationCopyWithImpl<_KycVerification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KycVerificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycVerification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&const DeepCollectionEquality().equals(other._documentNumberEnc, _documentNumberEnc)&&const DeepCollectionEquality().equals(other._evidenceUrls, _evidenceUrls)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,provider,status,documentType,const DeepCollectionEquality().hash(_documentNumberEnc),const DeepCollectionEquality().hash(_evidenceUrls),notes,createdAt,updatedAt);

@override
String toString() {
  return 'KycVerification(id: $id, userId: $userId, provider: $provider, status: $status, documentType: $documentType, documentNumberEnc: $documentNumberEnc, evidenceUrls: $evidenceUrls, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$KycVerificationCopyWith<$Res> implements $KycVerificationCopyWith<$Res> {
  factory _$KycVerificationCopyWith(_KycVerification value, $Res Function(_KycVerification) _then) = __$KycVerificationCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid userId, String provider, KycStatus status, String? documentType, List<int>? documentNumberEnc, List<String> evidenceUrls, String? notes,@UtcDateTimeConverter() DateTime createdAt,@UtcDateTimeConverter() DateTime updatedAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get userId;

}
/// @nodoc
class __$KycVerificationCopyWithImpl<$Res>
    implements _$KycVerificationCopyWith<$Res> {
  __$KycVerificationCopyWithImpl(this._self, this._then);

  final _KycVerification _self;
  final $Res Function(_KycVerification) _then;

/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? provider = null,Object? status = null,Object? documentType = freezed,Object? documentNumberEnc = freezed,Object? evidenceUrls = null,Object? notes = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_KycVerification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as KycStatus,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,documentNumberEnc: freezed == documentNumberEnc ? _self._documentNumberEnc : documentNumberEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,evidenceUrls: null == evidenceUrls ? _self._evidenceUrls : evidenceUrls // ignore: cast_nullable_to_non_nullable
as List<String>,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of KycVerification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// @nodoc
mixin _$KycVerificationDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'provider') String get provider;@JsonKey(name: 'status') String get status;@JsonKey(name: 'document_type') String? get documentType;@JsonKey(name: 'document_number_enc') List<int>? get documentNumberEnc;@JsonKey(name: 'evidence_urls') List<dynamic>? get evidenceUrls;@JsonKey(name: 'notes') String? get notes;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of KycVerificationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KycVerificationDtoCopyWith<KycVerificationDto> get copyWith => _$KycVerificationDtoCopyWithImpl<KycVerificationDto>(this as KycVerificationDto, _$identity);

  /// Serializes this KycVerificationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KycVerificationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&const DeepCollectionEquality().equals(other.documentNumberEnc, documentNumberEnc)&&const DeepCollectionEquality().equals(other.evidenceUrls, evidenceUrls)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,provider,status,documentType,const DeepCollectionEquality().hash(documentNumberEnc),const DeepCollectionEquality().hash(evidenceUrls),notes,createdAt,updatedAt);

@override
String toString() {
  return 'KycVerificationDto(id: $id, userId: $userId, provider: $provider, status: $status, documentType: $documentType, documentNumberEnc: $documentNumberEnc, evidenceUrls: $evidenceUrls, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $KycVerificationDtoCopyWith<$Res>  {
  factory $KycVerificationDtoCopyWith(KycVerificationDto value, $Res Function(KycVerificationDto) _then) = _$KycVerificationDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'provider') String provider,@JsonKey(name: 'status') String status,@JsonKey(name: 'document_type') String? documentType,@JsonKey(name: 'document_number_enc') List<int>? documentNumberEnc,@JsonKey(name: 'evidence_urls') List<dynamic>? evidenceUrls,@JsonKey(name: 'notes') String? notes,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$KycVerificationDtoCopyWithImpl<$Res>
    implements $KycVerificationDtoCopyWith<$Res> {
  _$KycVerificationDtoCopyWithImpl(this._self, this._then);

  final KycVerificationDto _self;
  final $Res Function(KycVerificationDto) _then;

/// Create a copy of KycVerificationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? provider = null,Object? status = null,Object? documentType = freezed,Object? documentNumberEnc = freezed,Object? evidenceUrls = freezed,Object? notes = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,documentNumberEnc: freezed == documentNumberEnc ? _self.documentNumberEnc : documentNumberEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,evidenceUrls: freezed == evidenceUrls ? _self.evidenceUrls : evidenceUrls // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KycVerificationDto].
extension KycVerificationDtoPatterns on KycVerificationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KycVerificationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KycVerificationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KycVerificationDto value)  $default,){
final _that = this;
switch (_that) {
case _KycVerificationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KycVerificationDto value)?  $default,){
final _that = this;
switch (_that) {
case _KycVerificationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'status')  String status, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'document_number_enc')  List<int>? documentNumberEnc, @JsonKey(name: 'evidence_urls')  List<dynamic>? evidenceUrls, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KycVerificationDto() when $default != null:
return $default(_that.id,_that.userId,_that.provider,_that.status,_that.documentType,_that.documentNumberEnc,_that.evidenceUrls,_that.notes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'status')  String status, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'document_number_enc')  List<int>? documentNumberEnc, @JsonKey(name: 'evidence_urls')  List<dynamic>? evidenceUrls, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _KycVerificationDto():
return $default(_that.id,_that.userId,_that.provider,_that.status,_that.documentType,_that.documentNumberEnc,_that.evidenceUrls,_that.notes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'provider')  String provider, @JsonKey(name: 'status')  String status, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'document_number_enc')  List<int>? documentNumberEnc, @JsonKey(name: 'evidence_urls')  List<dynamic>? evidenceUrls, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _KycVerificationDto() when $default != null:
return $default(_that.id,_that.userId,_that.provider,_that.status,_that.documentType,_that.documentNumberEnc,_that.evidenceUrls,_that.notes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KycVerificationDto extends KycVerificationDto {
  const _KycVerificationDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'provider') required this.provider, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'document_type') this.documentType, @JsonKey(name: 'document_number_enc') final  List<int>? documentNumberEnc, @JsonKey(name: 'evidence_urls') final  List<dynamic>? evidenceUrls, @JsonKey(name: 'notes') this.notes, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _documentNumberEnc = documentNumberEnc,_evidenceUrls = evidenceUrls,super._();
  factory _KycVerificationDto.fromJson(Map<String, dynamic> json) => _$KycVerificationDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'provider') final  String provider;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'document_type') final  String? documentType;
 final  List<int>? _documentNumberEnc;
@override@JsonKey(name: 'document_number_enc') List<int>? get documentNumberEnc {
  final value = _documentNumberEnc;
  if (value == null) return null;
  if (_documentNumberEnc is EqualUnmodifiableListView) return _documentNumberEnc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _evidenceUrls;
@override@JsonKey(name: 'evidence_urls') List<dynamic>? get evidenceUrls {
  final value = _evidenceUrls;
  if (value == null) return null;
  if (_evidenceUrls is EqualUnmodifiableListView) return _evidenceUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'notes') final  String? notes;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of KycVerificationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycVerificationDtoCopyWith<_KycVerificationDto> get copyWith => __$KycVerificationDtoCopyWithImpl<_KycVerificationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KycVerificationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycVerificationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&const DeepCollectionEquality().equals(other._documentNumberEnc, _documentNumberEnc)&&const DeepCollectionEquality().equals(other._evidenceUrls, _evidenceUrls)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,provider,status,documentType,const DeepCollectionEquality().hash(_documentNumberEnc),const DeepCollectionEquality().hash(_evidenceUrls),notes,createdAt,updatedAt);

@override
String toString() {
  return 'KycVerificationDto(id: $id, userId: $userId, provider: $provider, status: $status, documentType: $documentType, documentNumberEnc: $documentNumberEnc, evidenceUrls: $evidenceUrls, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$KycVerificationDtoCopyWith<$Res> implements $KycVerificationDtoCopyWith<$Res> {
  factory _$KycVerificationDtoCopyWith(_KycVerificationDto value, $Res Function(_KycVerificationDto) _then) = __$KycVerificationDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'provider') String provider,@JsonKey(name: 'status') String status,@JsonKey(name: 'document_type') String? documentType,@JsonKey(name: 'document_number_enc') List<int>? documentNumberEnc,@JsonKey(name: 'evidence_urls') List<dynamic>? evidenceUrls,@JsonKey(name: 'notes') String? notes,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$KycVerificationDtoCopyWithImpl<$Res>
    implements _$KycVerificationDtoCopyWith<$Res> {
  __$KycVerificationDtoCopyWithImpl(this._self, this._then);

  final _KycVerificationDto _self;
  final $Res Function(_KycVerificationDto) _then;

/// Create a copy of KycVerificationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? provider = null,Object? status = null,Object? documentType = freezed,Object? documentNumberEnc = freezed,Object? evidenceUrls = freezed,Object? notes = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_KycVerificationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,documentNumberEnc: freezed == documentNumberEnc ? _self._documentNumberEnc : documentNumberEnc // ignore: cast_nullable_to_non_nullable
as List<int>?,evidenceUrls: freezed == evidenceUrls ? _self._evidenceUrls : evidenceUrls // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
