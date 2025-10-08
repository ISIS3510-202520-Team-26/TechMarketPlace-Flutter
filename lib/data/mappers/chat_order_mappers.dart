import 'package:market_flutter/data/dtos/chat_dto.dart';
import 'package:market_flutter/data/dtos/order_dto.dart';
import 'package:market_flutter/domain/entities/chat.dart';
import 'package:market_flutter/domain/entities/order.dart';
import 'package:market_flutter/domain/value_objects/money.dart';

ChatThread mapThreadFromDto(ChatThreadDto d) => ChatThread(
      id: d.id,
      buyerId: d.buyerId,
      sellerId: d.sellerId,
      listingId: d.listingId,
      status: d.status,
    );

ChatThreadDto mapThreadToDto(ChatThread e) => ChatThreadDto(
      id: e.id,
      buyerId: e.buyerId,
      sellerId: e.sellerId,
      listingId: e.listingId,
      status: e.status,
    );

Message mapMessageFromDto(MessageDto d) => Message(
      id: d.id,
      threadId: d.threadId,
      senderId: d.senderId,
      text: d.text,
      media: d.media,
      sentAt: d.sentAt,
    );

MessageDto mapMessageToDto(Message e) => MessageDto(
      id: e.id,
      threadId: e.threadId,
      senderId: e.senderId,
      text: e.text,
      media: e.media,
      sentAt: e.sentAt,
    );

CheckoutOrder mapOrderFromDto(OrderDto d) => CheckoutOrder(
      id: d.id,
      listingId: d.listingId,
      buyerId: d.buyerId,
      amount: Money(amount: d.amount, currency: d.currency),
      status: d.status,
    );

OrderDto mapOrderToDto(CheckoutOrder e) => OrderDto(
      id: e.id,
      listingId: e.listingId,
      buyerId: e.buyerId,
      amount: e.amount.amount,
      currency: e.amount.currency,
      status: e.status,
    );
