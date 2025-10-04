import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Domain: User (includes sensitive fields; guard usage carefully).
@freezed
abstract class User with _$User {
  const User._();
  const factory User({
    @UuidConverter() required Uuid id,
    required Email email,
    Phone? phone,
    /// Hash only for admin flows / never expose to client UI.
    String? passwordHash,
    required UserRole role,
    required KycStatus kycStatus,
    required bool emailVerified,
    required bool phoneVerified,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
    @UtcDateTimeConverter() DateTime? deletedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/// DTO aligned to API/DB (snake_case).
@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'password_hash') String? passwordHash,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'kyc_status') required String kycStatus,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    @JsonKey(name: 'phone_verified') required bool phoneVerified,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  User toDomain() => User(
        id: Uuid.from(id),
        email: Email.from(email),
        phone: phone == null ? null : Phone.from(phone!),
        passwordHash: passwordHash,
        role: UserRole.values.firstWhere((e) => e.name == role,
            orElse: () => UserRole.student),
        kycStatus: KycStatus.values.firstWhere((e) => e.name == kycStatus,
            orElse: () => KycStatus.none),
        emailVerified: emailVerified,
        phoneVerified: phoneVerified,
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
        deletedAt: deletedAt == null ? null : DateTime.parse(deletedAt!).toUtc(),
      );

  static UserDto fromDomain(User u) => UserDto(
        id: u.id.asString,
        email: u.email.asString,
        phone: u.phone?.asString,
        passwordHash: u.passwordHash,
        role: u.role.name,
        kycStatus: u.kycStatus.name,
        emailVerified: u.emailVerified,
        phoneVerified: u.phoneVerified,
        createdAt: u.createdAt.toIso8601String(),
        updatedAt: u.updatedAt.toIso8601String(),
        deletedAt: u.deletedAt?.toIso8601String(),
      );
}
