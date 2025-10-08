import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/adapters/mock/mock_api_client.dart';
import 'package:market_flutter/data/dtos/user_dto.dart';
import 'package:market_flutter/domain/entities/user.dart';
import 'package:market_flutter/domain/repositories/user_repository.dart';
import 'package:market_flutter/domain/value_objects/campus.dart';

class UserRepositoryImpl implements UserRepository {
  final MockApiClient api;
  UserRepositoryImpl(this.api);

  @override
  Future<Result<User>> get(String id) async {
    try {
      final json = await api.getUser(id);
      if (json == null) return Err(NotFoundFailure('User $id not found'));
      final dto = UserDto.fromJson(json);
      return Ok(User(
        id: dto.id,
        email: dto.email,
        name: dto.name,
        campus: dto.campus != null ? Campus.tryCreate(name: dto.campus!) : null,
      ));
    } catch (e) {
      return Err(ServerFailure('get user failed: $e'));
    }
  }

  @override
  Future<Result<void>> update(User user) async {
    try {
      final dto = UserDto(
        id: user.id,
        email: user.email,
        name: user.name,
        campus: user.campus?.name,
      );
      await api.updateUser(dto.toJson());
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('update user failed: $e'));
    }
  }
}
