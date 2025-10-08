import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/user.dart';

abstract class UserRepository {
  Future<Result<User>> get(String id);
  Future<Result<void>> update(User user);
}
