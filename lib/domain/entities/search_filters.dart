import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/campus.dart';
import '../value_objects/condition.dart';
import 'category.dart';

part 'search_filters.freezed.dart';

@freezed
abstract class SearchFilters with _$SearchFilters {
  const SearchFilters._();

  /// Todos opcionales para permitir `const SearchFilters()`.
  const factory SearchFilters({
    String? query,
    CatalogCategory? category,
    Campus? campus,
    double? minPrice,
    double? maxPrice,
    String? brand,
    Condition? condition,
    String? availability,
    String? sort,
  }) = _SearchFilters;

  bool get hasPriceRange => minPrice != null || maxPrice != null;

  String get priceRangeLabel {
    final min = minPrice != null ? minPrice!.toStringAsFixed(0) : '';
    final max = maxPrice != null ? maxPrice!.toStringAsFixed(0) : '';
    if (min.isEmpty && max.isEmpty) return 'Any';
    if (min.isEmpty) return '≤ $max';
    if (max.isEmpty) return '≥ $min';
    return '$min – $max';
  }
}
