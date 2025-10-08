import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/domain/entities/order.dart';
import 'package:market_flutter/domain/value_objects/money.dart';

class StartCheckoutUc {
  const StartCheckoutUc();

  Future<Result<CheckoutOrder>> call({
    required String listingId,
    required String buyerId,
    required Money amount,
  }) async {
    if (listingId.trim().isEmpty || buyerId.trim().isEmpty) {
      return Err(ValidationFailure('listingId/buyerId must not be empty'));
    }
    final order = CheckoutOrder(
      id: 'o-$listingId-${DateTime.now().millisecondsSinceEpoch}',
      listingId: listingId,
      buyerId: buyerId,
      amount: amount,
      status: 'started',
    );
    return Ok(order);
  }
}
