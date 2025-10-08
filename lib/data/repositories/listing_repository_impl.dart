import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/listing_repository.dart';
import 'package:market_flutter/domain/entities/listing_base.dart';
import 'package:market_flutter/domain/value_objects/money.dart';
import 'package:market_flutter/domain/value_objects/campus.dart';

import '../datasources/remote/api_listing_ds.dart';
import '../dtos/listing_dto.dart';
import '../mappers/listing_mapper.dart';
import '../dtos/book_details_dto.dart';
import '../dtos/academic_material_details_dto.dart';
import '../dtos/tech_details_dto.dart';

class ListingRepositoryImpl implements ListingRepository {
  final ApiListingDs ds;

  ListingRepositoryImpl(this.ds);

  @override
  Future<Result<ListingBase>> getById(String id) async {
    final dto = await ds.getById(id);
    if (dto == null) return Err(NotFoundFailure('Listing $id not found'));
    return listingFromDto(dto);
  }

  @override
  Future<Result<ListingBase>> create(ListingBase draft) async {
    // map domain -> dto
    final dto = listingToDto(draft);
    final created = await ds.create(dto);
    return listingFromDto(created);
  }

  @override
  Future<Result<void>> toggleFavorite(String id) async {
    // Solo no-op mock.
    return Ok(null);
  }
}
