import 'package:freezed_annotation/freezed_annotation.dart';
import '../category.dart';

part 'book_details.freezed.dart';

@freezed
abstract class BookDetails with _$BookDetails {
  const BookDetails._();

  const factory BookDetails({
    required String isbn,
    required String title,
    required String author,
    String? edition,
    BookCategory? category,
  }) = _BookDetails;

  factory BookDetails.create({
    required String isbn,
    required String title,
    required String author,
    String? edition,
    BookCategory? category,
  }) {

    if (isbn.trim().isEmpty) {
      throw ArgumentError.value(isbn, 'isbn', 'must not be empty');
    }
    if (title.trim().isEmpty) {
      throw ArgumentError.value(title, 'title', 'must not be empty');
    }
    if (author.trim().isEmpty) {
      throw ArgumentError.value(author, 'author', 'must not be empty');
    }
    return BookDetails(
      isbn: isbn,
      title: title,
      author: author,
      edition: edition,
      category: category,
    );
  }
}
