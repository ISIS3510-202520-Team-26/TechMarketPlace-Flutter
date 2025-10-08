// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailsDto _$BookDetailsDtoFromJson(Map<String, dynamic> json) =>
    BookDetailsDto(
      isbn: json['isbn'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      edition: json['edition'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$BookDetailsDtoToJson(BookDetailsDto instance) =>
    <String, dynamic>{
      'isbn': instance.isbn,
      'title': instance.title,
      'author': instance.author,
      'edition': instance.edition,
      'category': instance.category,
    };
