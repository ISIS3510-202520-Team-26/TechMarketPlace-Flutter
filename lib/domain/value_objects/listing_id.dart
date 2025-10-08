import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_id.freezed.dart';

@freezed
abstract class ListingId with _$ListingId {
  const ListingId._();

  const factory ListingId({
    required String value,
  }) = _ListingId;

  factory ListingId.create(String value) {
    if (value.trim().isEmpty) {
      throw ArgumentError.value(value, 'value', 'must not be empty');
    }
    return ListingId(value: value);
  }

  static ListingId? tryCreate(String value) {
    if (value.trim().isEmpty) return null;
    return ListingId(value: value);
  }

  @override
  String toString() => value;
}
