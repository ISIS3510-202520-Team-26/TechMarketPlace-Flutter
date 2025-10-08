import 'package:freezed_annotation/freezed_annotation.dart';
import '../../value_objects/condition.dart';

part 'tech_details.freezed.dart';

@freezed
abstract class TechDetails with _$TechDetails {
  const TechDetails._();

  const factory TechDetails({
    required String brand,
    required String model,
    Condition? condition,
    Map<String, String>? specs,
    String? warranty,
  }) = _TechDetails;

  factory TechDetails.create({
    required String brand,
    required String model,
    Condition? condition,
    Map<String, String>? specs,
    String? warranty,
  }) {
    if (brand.trim().isEmpty) {
      throw ArgumentError.value(brand, 'brand', 'must not be empty');
    }
    if (model.trim().isEmpty) {
      throw ArgumentError.value(model, 'model', 'must not be empty');
    }
    return TechDetails(
      brand: brand,
      model: model,
      condition: condition,
      specs: (specs == null || specs.isEmpty) ? null : Map.unmodifiable(specs),
      warranty: warranty?.trim().isEmpty == true ? null : warranty,
    );
  }
}
