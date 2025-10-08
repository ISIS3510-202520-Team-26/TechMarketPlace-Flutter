/// Mappers de DTOs de detalles ↔ domain (con enums).
import 'package:market_flutter/data/dtos/book_details_dto.dart';
import 'package:market_flutter/data/dtos/academic_material_details_dto.dart';
import 'package:market_flutter/data/dtos/tech_details_dto.dart';
import 'package:market_flutter/domain/entities/listing_details/book_details.dart';
import 'package:market_flutter/domain/entities/listing_details/academic_material_details.dart';
import 'package:market_flutter/domain/entities/listing_details/tech_details.dart';
import 'package:market_flutter/domain/entities/category.dart'; 
import 'package:market_flutter/domain/value_objects/condition.dart';


BookCategory? _parseBookCategory(String? raw) {
  if (raw == null) return null;
  switch (raw.toUpperCase()) {
    case 'SCIENCE':
      return BookCategory.SCIENCE;
    case 'MATH':
      return BookCategory.MATH;
    case 'ENGINEERING':
      return BookCategory.ENGINEERING;
    case 'LITERATURE':
      return BookCategory.LITERATURE;
    case 'OTHER':
      return BookCategory.OTHER;
    default:
      return null; 
  }
}

String? _bookCategoryToString(BookCategory? c) => c?.name;

AcademicMaterialType _parseAcademicMaterialType(String? raw) {
  switch ((raw ?? '').toLowerCase()) {
    case 'notes':
      return AcademicMaterialType.notes;
    case 'kit':
      return AcademicMaterialType.kit;
    case 'supplies':
      return AcademicMaterialType.supplies;
    case 'services':
      return AcademicMaterialType.services;
    default:
      return AcademicMaterialType.notes;
  }
}

String _academicMaterialTypeToString(AcademicMaterialType t) => t.name;

Condition? _parseCondition(String? raw) {
  if (raw == null) return null;
  switch (raw.toUpperCase()) {
    case 'NEW':
      return Condition.NEW;
    case 'USED':
      return Condition.USED;
    case 'A':
      return Condition.A;
    case 'B':
      return Condition.B;
    default:
      return null;
  }
}

String? _conditionToString(Condition? c) => c?.name;

// ---------- BOOK ----------

BookDetails mapBookDetailsFromDto(BookDetailsDto dto) => BookDetails(
      isbn: dto.isbn ?? '',
      title: dto.title ?? '',
      author: dto.author ?? '',
      edition: dto.edition,
      category: _parseBookCategory(dto.category),
    );

BookDetailsDto mapBookDetailsToDto(BookDetails e) => BookDetailsDto(
      isbn: e.isbn,
      title: e.title,
      author: e.author,
      edition: e.edition,
      category: _bookCategoryToString(e.category),
    );


AcademicMaterialDetails mapAcademicFromDto(AcademicMaterialDetailsDto dto) =>
    AcademicMaterialDetails(
      materialType: _parseAcademicMaterialType(dto.materialType),
      courseCode: dto.courseCode,
      semester: dto.semester,
      instructor: dto.instructor,
      condition: dto.condition,
      title: dto.title ?? '',
    );

AcademicMaterialDetailsDto mapAcademicToDto(AcademicMaterialDetails e) =>
    AcademicMaterialDetailsDto(
      materialType: _academicMaterialTypeToString(e.materialType),
      courseCode: (e.courseCode == null || e.courseCode!.isEmpty) ? null : e.courseCode,
      semester: (e.semester == null || e.semester!.isEmpty) ? null : e.semester,
      instructor: (e.instructor == null || e.instructor!.isEmpty) ? null : e.instructor,
      condition: e.condition,
      title: e.title ?? '',
    );


TechDetails mapTechFromDto(TechDetailsDto dto) => TechDetails(
      brand: dto.brand ?? '',
      model: dto.model ?? '',
      condition: _parseCondition(dto.condition),
      specs: dto.specs ?? const {},
      warranty: dto.warranty,
    );

TechDetailsDto mapTechToDto(TechDetails e) => TechDetailsDto(
      brand: e.brand,
      model: e.model,
      condition: _conditionToString(e.condition),
      specs: e.specs,
      warranty: e.warranty,
    );
