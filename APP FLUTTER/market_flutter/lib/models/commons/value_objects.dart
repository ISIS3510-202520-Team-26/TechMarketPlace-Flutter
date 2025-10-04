import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_objects.freezed.dart';
part 'value_objects.g.dart';

typedef JsonMap = Map<String, dynamic>;

/// UUID value object (string-based) with regex validation.
@freezed
abstract class Uuid with _$Uuid {
  const Uuid._();
  const factory Uuid(String value) = _Uuid;

  factory Uuid.fromJson(dynamic json) => Uuid(json as String);

  static final _re =
      RegExp(r'^[0-9a-fA-F]{8}\b-[0-9a-fA-F]{4}\b-[1-5][0-9a-fA-F]{3}\b-[89abAB][0-9a-fA-F]{3}\b-[0-9a-fA-F]{12}$');

  factory Uuid.from(String input) {
    assert(_re.hasMatch(input), 'Invalid UUID: $input');
    return Uuid(input);
  }

  String get asString => value;
}

/// Email value object (basic validation).
@freezed
abstract class Email with _$Email {
  const Email._();
  const factory Email(String value) = _Email;

  factory Email.fromJson(dynamic json) => Email(json as String);

  static final _re = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

  factory Email.from(String input) {
    assert(_re.hasMatch(input), 'Invalid email: $input');
    return Email(input);
  }

  String get asString => value;
}

/// Phone value object (very light validation).
@freezed
abstract class Phone with _$Phone {
  const Phone._();
  const factory Phone(String value) = _Phone;

  factory Phone.fromJson(dynamic json) => Phone(json as String);

  static final _re = RegExp(r'^[0-9+\-\s()]{6,20}$');

  factory Phone.from(String input) {
    assert(_re.hasMatch(input), 'Invalid phone: $input');
    return Phone(input);
  }

  String get asString => value;
}

/// ISO-4217 currency code (3 letters).
@freezed
abstract class CurrencyCode with _$CurrencyCode {
  const CurrencyCode._();
  const factory CurrencyCode(String value) = _CurrencyCode;

  factory CurrencyCode.fromJson(dynamic json) => CurrencyCode(json as String);

  static final _re = RegExp(r'^[A-Z]{3}$');

  factory CurrencyCode.from(String input) {
    assert(_re.hasMatch(input), 'Invalid currency code: $input');
    return CurrencyCode(input);
  }

  String get asString => value;
}

/// Rating 1..5
@freezed
abstract class Rating with _$Rating {
  const Rating._();
  const factory Rating(int value) = _Rating;

  factory Rating.fromJson(dynamic json) => Rating(json as int);

  factory Rating.fromInt(int v) {
    assert(v >= 1 && v <= 5, 'Rating must be 1..5');
    return Rating(v);
  }

  int get asInt => value;
}
