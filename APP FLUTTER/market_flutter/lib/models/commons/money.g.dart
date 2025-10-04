// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Money _$MoneyFromJson(Map<String, dynamic> json) => _Money(
  amountCents: (json['amountCents'] as num).toInt(),
  currency: CurrencyCode.fromJson(json['currency']),
);

Map<String, dynamic> _$MoneyToJson(_Money instance) => <String, dynamic>{
  'amountCents': instance.amountCents,
  'currency': instance.currency,
};
