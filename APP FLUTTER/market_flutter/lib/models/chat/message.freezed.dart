// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Message {

@UuidConverter() Uuid get id;@UuidConverter() Uuid get chatId;@UuidConverter() Uuid get senderId; MessageType get type; String? get contentText; JsonMap get contentJson; String? get attachmentUrl; MessageStatus get status;@UtcDateTimeConverter() DateTime get sentAt;@UtcDateTimeConverter() DateTime? get deliveredAt;@UtcDateTimeConverter() DateTime? get readAt;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&const DeepCollectionEquality().equals(other.contentJson, contentJson)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,type,contentText,const DeepCollectionEquality().hash(contentJson),attachmentUrl,status,sentAt,deliveredAt,readAt);

@override
String toString() {
  return 'Message(id: $id, chatId: $chatId, senderId: $senderId, type: $type, contentText: $contentText, contentJson: $contentJson, attachmentUrl: $attachmentUrl, status: $status, sentAt: $sentAt, deliveredAt: $deliveredAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid chatId,@UuidConverter() Uuid senderId, MessageType type, String? contentText, JsonMap contentJson, String? attachmentUrl, MessageStatus status,@UtcDateTimeConverter() DateTime sentAt,@UtcDateTimeConverter() DateTime? deliveredAt,@UtcDateTimeConverter() DateTime? readAt
});


$UuidCopyWith<$Res> get id;$UuidCopyWith<$Res> get chatId;$UuidCopyWith<$Res> get senderId;

}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? type = null,Object? contentText = freezed,Object? contentJson = null,Object? attachmentUrl = freezed,Object? status = null,Object? sentAt = null,Object? deliveredAt = freezed,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as Uuid,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,contentJson: null == contentJson ? _self.contentJson : contentJson // ignore: cast_nullable_to_non_nullable
as JsonMap,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get chatId {
  
  return $UuidCopyWith<$Res>(_self.chatId, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get senderId {
  
  return $UuidCopyWith<$Res>(_self.senderId, (value) {
    return _then(_self.copyWith(senderId: value));
  });
}
}


/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Message value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Message value)  $default,){
final _that = this;
switch (_that) {
case _Message():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Message value)?  $default,){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid chatId, @UuidConverter()  Uuid senderId,  MessageType type,  String? contentText,  JsonMap contentJson,  String? attachmentUrl,  MessageStatus status, @UtcDateTimeConverter()  DateTime sentAt, @UtcDateTimeConverter()  DateTime? deliveredAt, @UtcDateTimeConverter()  DateTime? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.contentText,_that.contentJson,_that.attachmentUrl,_that.status,_that.sentAt,_that.deliveredAt,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid chatId, @UuidConverter()  Uuid senderId,  MessageType type,  String? contentText,  JsonMap contentJson,  String? attachmentUrl,  MessageStatus status, @UtcDateTimeConverter()  DateTime sentAt, @UtcDateTimeConverter()  DateTime? deliveredAt, @UtcDateTimeConverter()  DateTime? readAt)  $default,) {final _that = this;
switch (_that) {
case _Message():
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.contentText,_that.contentJson,_that.attachmentUrl,_that.status,_that.sentAt,_that.deliveredAt,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidConverter()  Uuid id, @UuidConverter()  Uuid chatId, @UuidConverter()  Uuid senderId,  MessageType type,  String? contentText,  JsonMap contentJson,  String? attachmentUrl,  MessageStatus status, @UtcDateTimeConverter()  DateTime sentAt, @UtcDateTimeConverter()  DateTime? deliveredAt, @UtcDateTimeConverter()  DateTime? readAt)?  $default,) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.contentText,_that.contentJson,_that.attachmentUrl,_that.status,_that.sentAt,_that.deliveredAt,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Message implements Message {
  const _Message({@UuidConverter() required this.id, @UuidConverter() required this.chatId, @UuidConverter() required this.senderId, required this.type, this.contentText, final  JsonMap contentJson = const <String, dynamic>{}, this.attachmentUrl, required this.status, @UtcDateTimeConverter() required this.sentAt, @UtcDateTimeConverter() this.deliveredAt, @UtcDateTimeConverter() this.readAt}): _contentJson = contentJson;
  factory _Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

@override@UuidConverter() final  Uuid id;
@override@UuidConverter() final  Uuid chatId;
@override@UuidConverter() final  Uuid senderId;
@override final  MessageType type;
@override final  String? contentText;
 final  JsonMap _contentJson;
@override@JsonKey() JsonMap get contentJson {
  if (_contentJson is EqualUnmodifiableMapView) return _contentJson;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_contentJson);
}

@override final  String? attachmentUrl;
@override final  MessageStatus status;
@override@UtcDateTimeConverter() final  DateTime sentAt;
@override@UtcDateTimeConverter() final  DateTime? deliveredAt;
@override@UtcDateTimeConverter() final  DateTime? readAt;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&const DeepCollectionEquality().equals(other._contentJson, _contentJson)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,type,contentText,const DeepCollectionEquality().hash(_contentJson),attachmentUrl,status,sentAt,deliveredAt,readAt);

@override
String toString() {
  return 'Message(id: $id, chatId: $chatId, senderId: $senderId, type: $type, contentText: $contentText, contentJson: $contentJson, attachmentUrl: $attachmentUrl, status: $status, sentAt: $sentAt, deliveredAt: $deliveredAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
@UuidConverter() Uuid id,@UuidConverter() Uuid chatId,@UuidConverter() Uuid senderId, MessageType type, String? contentText, JsonMap contentJson, String? attachmentUrl, MessageStatus status,@UtcDateTimeConverter() DateTime sentAt,@UtcDateTimeConverter() DateTime? deliveredAt,@UtcDateTimeConverter() DateTime? readAt
});


@override $UuidCopyWith<$Res> get id;@override $UuidCopyWith<$Res> get chatId;@override $UuidCopyWith<$Res> get senderId;

}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? type = null,Object? contentText = freezed,Object? contentJson = null,Object? attachmentUrl = freezed,Object? status = null,Object? sentAt = null,Object? deliveredAt = freezed,Object? readAt = freezed,}) {
  return _then(_Message(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Uuid,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as Uuid,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as Uuid,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,contentJson: null == contentJson ? _self._contentJson : contentJson // ignore: cast_nullable_to_non_nullable
as JsonMap,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get id {
  
  return $UuidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get chatId {
  
  return $UuidCopyWith<$Res>(_self.chatId, (value) {
    return _then(_self.copyWith(chatId: value));
  });
}/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UuidCopyWith<$Res> get senderId {
  
  return $UuidCopyWith<$Res>(_self.senderId, (value) {
    return _then(_self.copyWith(senderId: value));
  });
}
}


/// @nodoc
mixin _$MessageDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'chat_id') String get chatId;@JsonKey(name: 'sender_id') String get senderId;@JsonKey(name: 'type') String get type;@JsonKey(name: 'content_text') String? get contentText;@JsonKey(name: 'content_json') Map<String, dynamic>? get contentJson;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'status') String get status;@JsonKey(name: 'sent_at') String get sentAt;@JsonKey(name: 'delivered_at') String? get deliveredAt;@JsonKey(name: 'read_at') String? get readAt;
/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageDtoCopyWith<MessageDto> get copyWith => _$MessageDtoCopyWithImpl<MessageDto>(this as MessageDto, _$identity);

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&const DeepCollectionEquality().equals(other.contentJson, contentJson)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,type,contentText,const DeepCollectionEquality().hash(contentJson),attachmentUrl,status,sentAt,deliveredAt,readAt);

@override
String toString() {
  return 'MessageDto(id: $id, chatId: $chatId, senderId: $senderId, type: $type, contentText: $contentText, contentJson: $contentJson, attachmentUrl: $attachmentUrl, status: $status, sentAt: $sentAt, deliveredAt: $deliveredAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $MessageDtoCopyWith<$Res>  {
  factory $MessageDtoCopyWith(MessageDto value, $Res Function(MessageDto) _then) = _$MessageDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'sender_id') String senderId,@JsonKey(name: 'type') String type,@JsonKey(name: 'content_text') String? contentText,@JsonKey(name: 'content_json') Map<String, dynamic>? contentJson,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'status') String status,@JsonKey(name: 'sent_at') String sentAt,@JsonKey(name: 'delivered_at') String? deliveredAt,@JsonKey(name: 'read_at') String? readAt
});




}
/// @nodoc
class _$MessageDtoCopyWithImpl<$Res>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._self, this._then);

  final MessageDto _self;
  final $Res Function(MessageDto) _then;

/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? type = null,Object? contentText = freezed,Object? contentJson = freezed,Object? attachmentUrl = freezed,Object? status = null,Object? sentAt = null,Object? deliveredAt = freezed,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,contentJson: freezed == contentJson ? _self.contentJson : contentJson // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as String,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageDto].
extension MessageDtoPatterns on MessageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageDto value)  $default,){
final _that = this;
switch (_that) {
case _MessageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageDto value)?  $default,){
final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'sender_id')  String senderId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'content_text')  String? contentText, @JsonKey(name: 'content_json')  Map<String, dynamic>? contentJson, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'status')  String status, @JsonKey(name: 'sent_at')  String sentAt, @JsonKey(name: 'delivered_at')  String? deliveredAt, @JsonKey(name: 'read_at')  String? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.contentText,_that.contentJson,_that.attachmentUrl,_that.status,_that.sentAt,_that.deliveredAt,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'sender_id')  String senderId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'content_text')  String? contentText, @JsonKey(name: 'content_json')  Map<String, dynamic>? contentJson, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'status')  String status, @JsonKey(name: 'sent_at')  String sentAt, @JsonKey(name: 'delivered_at')  String? deliveredAt, @JsonKey(name: 'read_at')  String? readAt)  $default,) {final _that = this;
switch (_that) {
case _MessageDto():
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.contentText,_that.contentJson,_that.attachmentUrl,_that.status,_that.sentAt,_that.deliveredAt,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'sender_id')  String senderId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'content_text')  String? contentText, @JsonKey(name: 'content_json')  Map<String, dynamic>? contentJson, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'status')  String status, @JsonKey(name: 'sent_at')  String sentAt, @JsonKey(name: 'delivered_at')  String? deliveredAt, @JsonKey(name: 'read_at')  String? readAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.contentText,_that.contentJson,_that.attachmentUrl,_that.status,_that.sentAt,_that.deliveredAt,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageDto extends MessageDto {
  const _MessageDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'chat_id') required this.chatId, @JsonKey(name: 'sender_id') required this.senderId, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'content_text') this.contentText, @JsonKey(name: 'content_json') final  Map<String, dynamic>? contentJson, @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'sent_at') required this.sentAt, @JsonKey(name: 'delivered_at') this.deliveredAt, @JsonKey(name: 'read_at') this.readAt}): _contentJson = contentJson,super._();
  factory _MessageDto.fromJson(Map<String, dynamic> json) => _$MessageDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'chat_id') final  String chatId;
@override@JsonKey(name: 'sender_id') final  String senderId;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'content_text') final  String? contentText;
 final  Map<String, dynamic>? _contentJson;
@override@JsonKey(name: 'content_json') Map<String, dynamic>? get contentJson {
  final value = _contentJson;
  if (value == null) return null;
  if (_contentJson is EqualUnmodifiableMapView) return _contentJson;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'sent_at') final  String sentAt;
@override@JsonKey(name: 'delivered_at') final  String? deliveredAt;
@override@JsonKey(name: 'read_at') final  String? readAt;

/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageDtoCopyWith<_MessageDto> get copyWith => __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&const DeepCollectionEquality().equals(other._contentJson, _contentJson)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,type,contentText,const DeepCollectionEquality().hash(_contentJson),attachmentUrl,status,sentAt,deliveredAt,readAt);

@override
String toString() {
  return 'MessageDto(id: $id, chatId: $chatId, senderId: $senderId, type: $type, contentText: $contentText, contentJson: $contentJson, attachmentUrl: $attachmentUrl, status: $status, sentAt: $sentAt, deliveredAt: $deliveredAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$MessageDtoCopyWith<$Res> implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(_MessageDto value, $Res Function(_MessageDto) _then) = __$MessageDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'sender_id') String senderId,@JsonKey(name: 'type') String type,@JsonKey(name: 'content_text') String? contentText,@JsonKey(name: 'content_json') Map<String, dynamic>? contentJson,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'status') String status,@JsonKey(name: 'sent_at') String sentAt,@JsonKey(name: 'delivered_at') String? deliveredAt,@JsonKey(name: 'read_at') String? readAt
});




}
/// @nodoc
class __$MessageDtoCopyWithImpl<$Res>
    implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(this._self, this._then);

  final _MessageDto _self;
  final $Res Function(_MessageDto) _then;

/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? type = null,Object? contentText = freezed,Object? contentJson = freezed,Object? attachmentUrl = freezed,Object? status = null,Object? sentAt = null,Object? deliveredAt = freezed,Object? readAt = freezed,}) {
  return _then(_MessageDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,contentJson: freezed == contentJson ? _self._contentJson : contentJson // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as String,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
