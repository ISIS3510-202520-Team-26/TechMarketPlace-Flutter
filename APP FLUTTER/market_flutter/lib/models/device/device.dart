import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';
import '../commons/value_objects.dart' show JsonMap;

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
abstract class Device with _$Device {
  const factory Device({
    @UuidConverter() required Uuid id,
    @UuidConverter() Uuid? userId,
    required DevicePlatform platform,
    String? deviceModel,
    /// Encrypted push token (base64 bytes).
    List<int>? pushTokenEnc,
    @Default(false) bool isVerified,
    @Default(<String, dynamic>{}) JsonMap metadata,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
abstract class DeviceDto with _$DeviceDto {
  const DeviceDto._();
  const factory DeviceDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'device_model') String? deviceModel,
    @JsonKey(name: 'push_token_enc') List<int>? pushTokenEnc,
    @JsonKey(name: 'is_verified') required bool isVerified,
    @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _DeviceDto;

  factory DeviceDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceDtoFromJson(json);

  Device toDomain() => Device(
        id: Uuid.from(id),
        userId: userId == null ? null : Uuid.from(userId!),
        platform: DevicePlatform.values.firstWhere((e) => e.name == platform),
        deviceModel: deviceModel,
        pushTokenEnc: pushTokenEnc,
        isVerified: isVerified,
        metadata: metadata ?? <String, dynamic>{},
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
      );

  static DeviceDto fromDomain(Device d) => DeviceDto(
        id: d.id.asString,
        userId: d.userId?.asString,
        platform: d.platform.name,
        deviceModel: d.deviceModel,
        pushTokenEnc: d.pushTokenEnc,
        isVerified: d.isVerified,
        metadata: d.metadata,
        createdAt: d.createdAt.toIso8601String(),
        updatedAt: d.updatedAt.toIso8601String(),
      );
}
