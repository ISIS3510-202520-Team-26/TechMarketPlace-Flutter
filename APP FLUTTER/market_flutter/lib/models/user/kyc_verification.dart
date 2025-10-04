import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'kyc_verification.freezed.dart';
part 'kyc_verification.g.dart';

@freezed
abstract class KycVerification with _$KycVerification {
  const factory KycVerification({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid userId,
    required String provider,
    required KycStatus status,
    String? documentType,
    List<int>? documentNumberEnc,
    @Default(<String>[]) List<String> evidenceUrls,
    String? notes,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _KycVerification;

  factory KycVerification.fromJson(Map<String, dynamic> json) =>
      _$KycVerificationFromJson(json);
}

@freezed
abstract class KycVerificationDto with _$KycVerificationDto {
  const KycVerificationDto._();
  const factory KycVerificationDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'provider') required String provider,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'document_type') String? documentType,
    @JsonKey(name: 'document_number_enc') List<int>? documentNumberEnc,
    @JsonKey(name: 'evidence_urls') List<dynamic>? evidenceUrls,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _KycVerificationDto;

  factory KycVerificationDto.fromJson(Map<String, dynamic> json) =>
      _$KycVerificationDtoFromJson(json);

  KycVerification toDomain() => KycVerification(
        id: Uuid.from(id),
        userId: Uuid.from(userId),
        provider: provider,
        status: KycStatus.values.firstWhere((e) => e.name == status,
            orElse: () => KycStatus.pending),
        documentType: documentType,
        documentNumberEnc: documentNumberEnc,
        evidenceUrls: (evidenceUrls ?? const []).cast<String>(),
        notes: notes,
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
      );

  static KycVerificationDto fromDomain(KycVerification k) =>
      KycVerificationDto(
        id: k.id.asString,
        userId: k.userId.asString,
        provider: k.provider,
        status: k.status.name,
        documentType: k.documentType,
        documentNumberEnc: k.documentNumberEnc,
        evidenceUrls: k.evidenceUrls,
        notes: k.notes,
        createdAt: k.createdAt.toIso8601String(),
        updatedAt: k.updatedAt.toIso8601String(),
      );
}
