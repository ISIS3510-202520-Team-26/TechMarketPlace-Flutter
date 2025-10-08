import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/category.dart';

abstract class CategoryRepository {
  Future<Result<List<CatalogCategory>>> all();
}
