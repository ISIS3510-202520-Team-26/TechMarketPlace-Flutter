import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/datasources/remote/api_search_ds.dart';
import 'package:market_flutter/domain/entities/category.dart';
import 'package:market_flutter/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final ApiSearchDs remote;
  CategoryRepositoryImpl(this.remote);

  @override
  Future<Result<List<CatalogCategory>>> all() async {
    try {
      final list = await remote.categories();
      final mapped = list
          .map((s) => CatalogCategory.values.firstWhere(
                (e) => e.name.toUpperCase() == s.toUpperCase(),
                orElse: () => CatalogCategory.SERVICES,
              ))
          .toList(growable: false);
      return Ok(mapped);
    } catch (e) {
      return Err(ServerFailure('categories failed: $e'));
    }
  }
}
