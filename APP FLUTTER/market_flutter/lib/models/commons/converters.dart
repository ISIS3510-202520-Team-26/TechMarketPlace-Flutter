import 'package:json_annotation/json_annotation.dart';
import 'value_objects.dart';
import 'money.dart';

class UtcDateTimeConverter implements JsonConverter<DateTime, String> {
  const UtcDateTimeConverter();
  @override
  DateTime fromJson(String json) => DateTime.parse(json).toUtc();
  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}
class UuidConverter implements JsonConverter<Uuid, String> {
  const UuidConverter();
  @override
  Uuid fromJson(String json) => Uuid.from(json);
  @override
  String toJson(Uuid object) => object.asString;
}

class JsonMapConverter implements JsonConverter<JsonMap, Map<String, dynamic>?> {
  const JsonMapConverter();
  @override
  JsonMap fromJson(Map<String, dynamic>? json) => (json ?? <String, dynamic>{});
  @override
  Map<String, dynamic> toJson(JsonMap object) => object;
}

class MoneyConverter implements JsonConverter<Money, Map<String, dynamic>> {
  const MoneyConverter();
  @override
  Money fromJson(Map<String, dynamic> json) => Money(
        amountCents: json['amount_cents'] as int,
        currency: CurrencyCode.from(json['currency'] as String),
      );
  @override
  Map<String, dynamic> toJson(Money object) => {
        'amount_cents': object.amountCents,
        'currency': object.currency.asString,
      };
}
