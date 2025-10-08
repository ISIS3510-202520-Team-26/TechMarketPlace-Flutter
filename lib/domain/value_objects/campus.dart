import 'package:freezed_annotation/freezed_annotation.dart';

part 'campus.freezed.dart';

@freezed
abstract class Campus with _$Campus {
  const Campus._();

  const factory Campus({
    required String name,
    double? lat,
    double? lon,
  }) = _Campus;

  factory Campus.create({
    required String name,
    double? lat,
    double? lon,
  }) {
    if (name.trim().isEmpty) {
      throw ArgumentError.value(name, 'name', 'must not be empty');
    }
    return Campus(name: name, lat: lat, lon: lon);
  }

  static Campus? tryCreate({
    required String name,
    double? lat,
    double? lon,
  }) {
    if (name.trim().isEmpty) return null;
    return Campus(name: name, lat: lat, lon: lon);
  }

  String get display => [
        name,
        if (lat != null && lon != null) '($lat,$lon)',
      ].join(' ');
}
