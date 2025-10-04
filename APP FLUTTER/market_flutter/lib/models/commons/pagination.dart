import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

/// Generic page response metadata.
@freezed
abstract class PageMeta with _$PageMeta {
  const factory PageMeta({
    required int page,
    required int pageSize,
    required int totalItems,
    required int totalPages,
  }) = _PageMeta;

  factory PageMeta.fromJson(Map<String, dynamic> json) =>
      _$PageMetaFromJson(json);
}
