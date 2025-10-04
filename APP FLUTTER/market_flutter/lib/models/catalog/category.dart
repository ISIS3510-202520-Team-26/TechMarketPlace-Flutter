import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// Domain: Taxonomy node (supports parent hierarchy).
@freezed
abstract class Category with _$Category {
  const factory Category({
    @UuidConverter() required Uuid id,
    required String name,
    required String slug,
    @UuidConverter() Uuid? parentId,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

/// DTO
@freezed
abstract class CategoryDto with _$CategoryDto {
  const CategoryDto._();
  const factory CategoryDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Category toDomain() => Category(
        id: Uuid.from(id),
        name: name,
        slug: slug,
        parentId: parentId == null ? null : Uuid.from(parentId!),
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static CategoryDto fromDomain(Category c) => CategoryDto(
        id: c.id.asString,
        name: c.name,
        slug: c.slug,
        parentId: c.parentId?.asString,
        createdAt: c.createdAt.toIso8601String(),
      );
}
