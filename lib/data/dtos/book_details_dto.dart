import 'package:json_annotation/json_annotation.dart';

part 'book_details_dto.g.dart';

@JsonSerializable()
class BookDetailsDto {
  final String isbn;
  final String title;
  final String author;
  final String? edition;
  final String? category;

  BookDetailsDto({
    required this.isbn,
    required this.title,
    required this.author,
    this.edition,
    this.category,
  });

  factory BookDetailsDto.fromJson(Map<String, dynamic> json) => _$BookDetailsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$BookDetailsDtoToJson(this);
}
