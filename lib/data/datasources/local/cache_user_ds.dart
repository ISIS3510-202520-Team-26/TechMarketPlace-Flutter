import 'package:market_flutter/data/dtos/user_dto.dart';

class CacheUserDs {
  UserDto? _current;

  UserDto? get current => _current;

  void set(UserDto? u) => _current = u;
}
