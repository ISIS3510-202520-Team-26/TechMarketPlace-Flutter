import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/dtos/listing_dto.dart';
import 'package:market_flutter/data/dtos/book_details_dto.dart';
import 'package:market_flutter/data/dtos/academic_material_details_dto.dart';
import 'package:market_flutter/data/dtos/tech_details_dto.dart';
import 'package:market_flutter/data/mappers/details_mappers.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/entities/listing_details/book_details.dart';
import 'package:market_flutter/domain/entities/listing_details/academic_material_details.dart';
import 'package:market_flutter/domain/entities/listing_details/tech_details.dart';
import 'package:market_flutter/domain/value_objects/campus.dart';
import 'package:market_flutter/domain/value_objects/money.dart';

Result<ListingBase> listingFromDto(ListingDto dto) {
  final price = Money(amount: dto.priceAmount, currency: dto.priceCurrency);
  final campus = Campus(name: dto.campus ?? '');

  switch (dto.type) {
    case 'book': {
      final d = BookDetailsDto.fromJson(dto.details);
      final details = mapBookDetailsFromDto(d);
      return Ok(ListingBase.book(
        id: dto.id,
        sellerId: dto.sellerId,
        price: price,
        campus: campus,
        photos: dto.photos,
        details: details,
      ));
    }
    case 'material': {
      final d = AcademicMaterialDetailsDto.fromJson(dto.details);
      final details = mapAcademicFromDto(d);
      return Ok(ListingBase.material(
        id: dto.id,
        sellerId: dto.sellerId,
        price: price,
        campus: campus,
        photos: dto.photos,
        details: details,
      ));
    }
    case 'tech': {
      final d = TechDetailsDto.fromJson(dto.details);
      final details = mapTechFromDto(d);
      return Ok(ListingBase.tech(
        id: dto.id,
        sellerId: dto.sellerId,
        price: price,
        campus: campus,
        photos: dto.photos,
        details: details,
      ));
    }
    default:
      return Err(ValidationFailure('Unknown listing type: ${dto.type}'));
  }
}

ListingDto listingToDto(ListingBase e) {
  return e.when(
    book: (id, sellerId, price, campus, photos, BookDetails details) => ListingDto(
      id: id,
      sellerId: sellerId,
      priceAmount: price.amount,
      priceCurrency: price.currency,
      campus: campus.name.isEmpty ? null : campus.name,
      photos: photos,
      type: 'book',
      details: mapBookDetailsToDto(details).toJson(),
    ),
    material: (id, sellerId, price, campus, photos, AcademicMaterialDetails details) => ListingDto(
      id: id,
      sellerId: sellerId,
      priceAmount: price.amount,
      priceCurrency: price.currency,
      campus: campus.name.isEmpty ? null : campus.name,
      photos: photos,
      type: 'material',
      details: mapAcademicToDto(details).toJson(),
    ),
    tech: (id, sellerId, price, campus, photos, TechDetails details) => ListingDto(
      id: id,
      sellerId: sellerId,
      priceAmount: price.amount,
      priceCurrency: price.currency,
      campus: campus.name.isEmpty ? null : campus.name,
      photos: photos,
      type: 'tech',
      details: mapTechToDto(details).toJson(),
    ),
  );
}
