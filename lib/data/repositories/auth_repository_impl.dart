import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/datasources/local/cache_user_ds.dart';
import 'package:market_flutter/data/adapters/mock/mock_api_client.dart';
import 'package:market_flutter/data/dtos/user_dto.dart';
import 'package:market_flutter/domain/entities/user.dart';
import 'package:market_flutter/domain/repositories/auth_repository.dart';
import 'package:market_flutter/domain/value_objects/campus.dart';

class AuthRepositoryImpl implements AuthRepository {
  final MockApiClient api;
  final CacheUserDs cache;

  AuthRepositoryImpl({required this.api, required this.cache});

  @override
  Future<Result<User?>> currentUser() async {
    try {
      final json = await api.currentUser();
      if (json == null) {
        cache.set(null);
        return Ok(null);
      }
      final dto = UserDto.fromJson(json);
      cache.set(dto);
      return Ok(User(
        id: dto.id,
        email: dto.email,
        name: dto.name,
        campus: dto.campus != null ? Campus.tryCreate(name: dto.campus!) : null,
      ));
    } catch (e) {
      return Err(ServerFailure('currentUser failed: $e'));
    }
  }

  @override
  Future<Result<void>> signIn(String email, String password) async {
    try {
      await api.signIn(email, password);
      final cu = await api.currentUser();
      if (cu != null) cache.set(UserDto.fromJson(cu));
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('signIn failed: $e'));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await api.signOut();
      cache.set(null);
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('signOut failed: $e'));
    }
  }
}
