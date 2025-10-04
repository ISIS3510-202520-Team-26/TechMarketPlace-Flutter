import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';
import '../commons/value_objects.dart' show Rating;

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
abstract class Review with _$Review {
  const factory Review({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid orderId,
    @UuidConverter() required Uuid raterId,
    @UuidConverter() required Uuid ratedUserId,
    required ReviewRole role,
    required Rating rating,
    String? comment,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
abstract class ReviewDto with _$ReviewDto {
  const ReviewDto._();
  const factory ReviewDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'rater_id') required String raterId,
    @JsonKey(name: 'rated_user_id') required String ratedUserId,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  Review toDomain() => Review(
        id: Uuid.from(id),
        orderId: Uuid.from(orderId),
        raterId: Uuid.from(raterId),
        ratedUserId: Uuid.from(ratedUserId),
        role: ReviewRole.values.firstWhere((e) => e.name == role),
        rating: Rating.fromInt(rating),
        comment: comment,
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static ReviewDto fromDomain(Review r) => ReviewDto(
        id: r.id.asString,
        orderId: r.orderId.asString,
        raterId: r.raterId.asString,
        ratedUserId: r.ratedUserId.asString,
        role: r.role.name,
        rating: r.rating.asInt,
        comment: r.comment,
        createdAt: r.createdAt.toIso8601String(),
      );
}
