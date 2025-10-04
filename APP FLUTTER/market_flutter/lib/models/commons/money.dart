import 'package:freezed_annotation/freezed_annotation.dart';
import 'value_objects.dart';

part 'money.freezed.dart';
part 'money.g.dart';

/// Monetary value stored as cents + ISO currency code.
@freezed
abstract class Money with _$Money {
  const Money._();
  const factory Money({
    required int amountCents,
    required CurrencyCode currency,
  }) = _Money;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
}
