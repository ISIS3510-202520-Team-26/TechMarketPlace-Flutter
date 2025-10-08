import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/campus.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String email,
    required String name,
    Campus? campus,
  }) = _User;

  factory User.create({
    required String id,
    required String email,
    required String name,
    Campus? campus,
  }) {
    if (id.trim().isEmpty) {
      throw ArgumentError.value(id, 'id', 'must not be empty');
    }
    if (email.trim().isEmpty) {
      throw ArgumentError.value(email, 'email', 'must not be empty');
    }
    if (name.trim().isEmpty) {
      throw ArgumentError.value(name, 'name', 'must not be empty');
    }
    return User(id: id, email: email, name: name, campus: campus);
  }
}
