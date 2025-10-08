import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/money.dart';

part 'order.freezed.dart';

@freezed
abstract class CheckoutOrder with _$CheckoutOrder {
  const CheckoutOrder._();

  const factory CheckoutOrder({
    required String id,
    required String listingId,
    required String buyerId,
    required Money amount,
    required String status,
  }) = _CheckoutOrder;
}
