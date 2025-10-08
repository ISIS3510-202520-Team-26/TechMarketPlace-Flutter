import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Result<User?>> currentUser();
  Future<Result<void>> signIn(String email, String password);
  Future<Result<void>> signOut();
}
