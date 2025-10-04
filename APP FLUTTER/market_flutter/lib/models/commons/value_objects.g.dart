// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Uuid _$UuidFromJson(Map<String, dynamic> json) =>
    _Uuid(json['value'] as String);

Map<String, dynamic> _$UuidToJson(_Uuid instance) => <String, dynamic>{
  'value': instance.value,
};

_Email _$EmailFromJson(Map<String, dynamic> json) =>
    _Email(json['value'] as String);

Map<String, dynamic> _$EmailToJson(_Email instance) => <String, dynamic>{
  'value': instance.value,
};

_Phone _$PhoneFromJson(Map<String, dynamic> json) =>
    _Phone(json['value'] as String);

Map<String, dynamic> _$PhoneToJson(_Phone instance) => <String, dynamic>{
  'value': instance.value,
};

_CurrencyCode _$CurrencyCodeFromJson(Map<String, dynamic> json) =>
    _CurrencyCode(json['value'] as String);

Map<String, dynamic> _$CurrencyCodeToJson(_CurrencyCode instance) =>
    <String, dynamic>{'value': instance.value};

_Rating _$RatingFromJson(Map<String, dynamic> json) =>
    _Rating((json['value'] as num).toInt());

Map<String, dynamic> _$RatingToJson(_Rating instance) => <String, dynamic>{
  'value': instance.value,
};
