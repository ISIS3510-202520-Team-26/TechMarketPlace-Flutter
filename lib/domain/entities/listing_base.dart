import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/money.dart';
import '../value_objects/campus.dart';
import 'listing_details/book_details.dart';
import 'listing_details/academic_material_details.dart';
import 'listing_details/tech_details.dart';

part 'listing_base.freezed.dart';

@freezed
sealed class ListingBase with _$ListingBase {
  const ListingBase._();

  const factory ListingBase.book({
    required String id,
    required String sellerId,
    required Money price,
    required Campus campus,
    @Default(<String>[]) List<String> photos,
    required BookDetails details,
  }) = BookListing;

  const factory ListingBase.material({
    required String id,
    required String sellerId,
    required Money price,
    required Campus campus,
    @Default(<String>[]) List<String> photos,
    required AcademicMaterialDetails details,
  }) = MaterialListing;

  const factory ListingBase.tech({
    required String id,
    required String sellerId,
    required Money price,
    required Campus campus,
    @Default(<String>[]) List<String> photos,
    required TechDetails details,
  }) = TechListing;

  String get title => when(
        book: (id, sellerId, price, campus, photos, details) => details.title,
        material: (id, sellerId, price, campus, photos, details) =>
            details.title ?? details.materialType.name,
        tech: (id, sellerId, price, campus, photos, details) =>
            '${details.brand} ${details.model}',
      );
}
