// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatParticipant {

@UuidConverter() Uuid get chatId;@UuidConverter() Uuid get userId; ChatRole get role;@UtcDateTimeConverter() DateTime get joinedAt;
/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatParticipantCopyWith<ChatParticipant> get copyWith => _$ChatParticipantCopyWithImpl<ChatParticipant>(this as ChatParticipant, _$identity);

  /// Serializes this ChatParticipant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatParticipant&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,userId,role,joinedAt);

@override
String toString() {
  return 'ChatParticipant(chatId: $chatId, userId: $userId, role: $role, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $ChatParticipantCopyWith<$Res>  {
  factory $ChatParticipantCopyWith(ChatParticipant value, $Res Function(ChatParticipant) _then) = _$ChatParticipantCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid chatId,@UuidConverter() Uuid userId, ChatRole role,@UtcDateTimeConverter() DateTime joinedAt
});


$UuidCopyWith<$Res> get chatId;$UuidCopyWith<$Res> get userId;

}
/// @nodoc
class _$ChatParticipantCopyWithImpl<$Res>
    implements $ChatParticipantCopyWith<$Res> {
  _$ChatParticipantCopyWithImpl(this._self, this._then);

  final ChatParticipant _self;
  final $Res Function(ChatParticipant) _then;

/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? userId = null,Object? role = null,Object? joinedAt = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatRole,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get chatId {
  
  return $UuidCopyWith<$Res>(_self.chatId, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get userId {
  
  return $UuidCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatParticipant].
extension ChatParticipantPatterns on ChatParticipant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatParticipant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatParticipant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatParticipant value)  $default,){
final _that = this;
switch (_that) {
case _ChatParticipant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatParticipant value)?  $default,){
final _that = this;
switch (_that) {
case _ChatParticipant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid chatId, @UuidConverter()  Uuid userId,  ChatRole role, @UtcDateTimeConverter()  DateTime joinedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatParticipant() when $default != null:
return $default(_that.chatId,_that.userId,_that.role,_that.joinedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid chatId, @UuidConverter()  Uuid userId,  ChatRole role, @UtcDateTimeConverter()  DateTime joinedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatParticipant():
return $default(_that.chatId,_that.userId,_that.role,_that.joinedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid chatId, @UuidConverter()  Uuid userId,  ChatRole role, @UtcDateTimeConverter()  DateTime joinedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatParticipant() when $default != null:
return $default(_that.chatId,_that.userId,_that.role,_that.joinedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatParticipant implements ChatParticipant {
  const _ChatParticipant({@UuidConverter() required this.chatId, @UuidConverter() required this.userId, required this.role, @UtcDateTimeConverter() required this.joinedAt});
  factory _ChatParticipant.fromJson(Map<String, dynamic> json) => _$ChatParticipantFromJson(json);

@override@UuidConverter() final  Uuid chatId;
@override@UuidConverter() final  Uuid userId;
@override final  ChatRole role;
@override@UtcDateTimeConverter() final  DateTime joinedAt;

/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatParticipantCopyWith<_ChatParticipant> get copyWith => __$ChatParticipantCopyWithImpl<_ChatParticipant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatParticipantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatParticipant&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,userId,role,joinedAt);

@override
String toString() {
  return 'ChatParticipant(chatId: $chatId, userId: $userId, role: $role, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatParticipantCopyWith<$Res> implements $ChatParticipantCopyWith<$Res> {
  factory _$ChatParticipantCopyWith(_ChatParticipant value, $Res Function(_ChatParticipant) _then) = __$ChatParticipantCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid chatId,@UuidConverter() Uuid userId, ChatRole role,@UtcDateTimeConverter() DateTime joinedAt
});


@override $UuidCopyWith<$Res> get chatId;@override $UuidCopyWith<$Res> get userId;

}
/// @nodoc
class __$ChatParticipantCopyWithImpl<$Res>
    implements _$ChatParticipantCopyWith<$Res> {
  __$ChatParticipantCopyWithImpl(this._self, this._then);

  final _ChatParticipant _self;
  final $Res Function(_ChatParticipant) _then;

/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? userId = null,Object? role = null,Object? joinedAt = null,}) {
  return _then(_ChatParticipant(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as Uuid,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatRole,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ChatParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get chatId {
  
  return $UuidCopyWith<$Res>(_self.chatId, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of ChatParticipant
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
mixin _$ChatParticipantDto {

@JsonKey(name: 'chat_id') String get chatId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'role') String get role;@JsonKey(name: 'joined_at') String get joinedAt;
/// Create a copy of ChatParticipantDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatParticipantDtoCopyWith<ChatParticipantDto> get copyWith => _$ChatParticipantDtoCopyWithImpl<ChatParticipantDto>(this as ChatParticipantDto, _$identity);

  /// Serializes this ChatParticipantDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatParticipantDto&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,userId,role,joinedAt);

@override
String toString() {
  return 'ChatParticipantDto(chatId: $chatId, userId: $userId, role: $role, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $ChatParticipantDtoCopyWith<$Res>  {
  factory $ChatParticipantDtoCopyWith(ChatParticipantDto value, $Res Function(ChatParticipantDto) _then) = _$ChatParticipantDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'role') String role,@JsonKey(name: 'joined_at') String joinedAt
});




}
/// @nodoc
class _$ChatParticipantDtoCopyWithImpl<$Res>
    implements $ChatParticipantDtoCopyWith<$Res> {
  _$ChatParticipantDtoCopyWithImpl(this._self, this._then);

  final ChatParticipantDto _self;
  final $Res Function(ChatParticipantDto) _then;

/// Create a copy of ChatParticipantDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? userId = null,Object? role = null,Object? joinedAt = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatParticipantDto].
extension ChatParticipantDtoPatterns on ChatParticipantDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatParticipantDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatParticipantDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatParticipantDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatParticipantDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'joined_at')  String joinedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatParticipantDto() when $default != null:
return $default(_that.chatId,_that.userId,_that.role,_that.joinedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'joined_at')  String joinedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantDto():
return $default(_that.chatId,_that.userId,_that.role,_that.joinedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'joined_at')  String joinedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantDto() when $default != null:
return $default(_that.chatId,_that.userId,_that.role,_that.joinedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatParticipantDto extends ChatParticipantDto {
  const _ChatParticipantDto({@JsonKey(name: 'chat_id') required this.chatId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'role') required this.role, @JsonKey(name: 'joined_at') required this.joinedAt}): super._();
  factory _ChatParticipantDto.fromJson(Map<String, dynamic> json) => _$ChatParticipantDtoFromJson(json);

@override@JsonKey(name: 'chat_id') final  String chatId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'role') final  String role;
@override@JsonKey(name: 'joined_at') final  String joinedAt;

/// Create a copy of ChatParticipantDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatParticipantDtoCopyWith<_ChatParticipantDto> get copyWith => __$ChatParticipantDtoCopyWithImpl<_ChatParticipantDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatParticipantDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatParticipantDto&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,userId,role,joinedAt);

@override
String toString() {
  return 'ChatParticipantDto(chatId: $chatId, userId: $userId, role: $role, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatParticipantDtoCopyWith<$Res> implements $ChatParticipantDtoCopyWith<$Res> {
  factory _$ChatParticipantDtoCopyWith(_ChatParticipantDto value, $Res Function(_ChatParticipantDto) _then) = __$ChatParticipantDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'role') String role,@JsonKey(name: 'joined_at') String joinedAt
});




}
/// @nodoc
class __$ChatParticipantDtoCopyWithImpl<$Res>
    implements _$ChatParticipantDtoCopyWith<$Res> {
  __$ChatParticipantDtoCopyWithImpl(this._self, this._then);

  final _ChatParticipantDto _self;
  final $Res Function(_ChatParticipantDto) _then;

/// Create a copy of ChatParticipantDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? userId = null,Object? role = null,Object? joinedAt = null,}) {
  return _then(_ChatParticipantDto(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
