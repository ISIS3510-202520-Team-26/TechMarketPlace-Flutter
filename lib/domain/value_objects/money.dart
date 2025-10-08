import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.freezed.dart';

@freezed
abstract class Money with _$Money {
  const Money._();

  const factory Money({
    required double amount,
    required String currency,
  }) = _Money;

  factory Money.create({
    required double amount,
    required String currency,
  }) {
    if (amount < 0) {
      throw ArgumentError.value(amount, 'amount', 'must be >= 0');
    }
    if (currency.trim().isEmpty) {
      throw ArgumentError.value(currency, 'currency', 'must not be empty');
    }
    return Money(amount: amount, currency: currency);
  }

  /// Variante que no lanza: devuelve null si es inválido.
  static Money? tryCreate({
    required double amount,
    required String currency,
  }) {
    if (amount < 0) return null;
    if (currency.trim().isEmpty) return null;
    return Money(amount: amount, currency: currency);
  }

  String get formattedWithSymbol {
    switch (currency) {
      case 'USD':
        return '\$${amount.toStringAsFixed(2)}';
      case 'EUR':
        return '€${amount.toStringAsFixed(2)}';
      default:
        return '${amount.toStringAsFixed(2)} $currency';
    }
  }

  String get currencySymbol {
    switch (currency) {
      case 'USD':
        return '\$';
      case 'EUR':
        return '€';
      default:
        return currency;
    }
  }
}
