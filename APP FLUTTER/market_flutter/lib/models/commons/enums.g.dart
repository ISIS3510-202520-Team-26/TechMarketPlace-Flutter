// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

const _$UserRoleEnumMap = {
  UserRole.student: 'student',
  UserRole.moderator: 'moderator',
  UserRole.admin: 'admin',
};

const _$KycStatusEnumMap = {
  KycStatus.none: 'none',
  KycStatus.pending: 'pending',
  KycStatus.verified: 'verified',
  KycStatus.rejected: 'rejected',
};

const _$ListingConditionEnumMap = {
  ListingCondition.new_: 'new',
  ListingCondition.used: 'used',
  ListingCondition.refurbished: 'refurbished',
};

const _$ListingStatusEnumMap = {
  ListingStatus.draft: 'draft',
  ListingStatus.active: 'active',
  ListingStatus.reserved: 'reserved',
  ListingStatus.sold: 'sold',
  ListingStatus.archived: 'archived',
  ListingStatus.removed: 'removed',
};

const _$ListingVisibilityEnumMap = {
  ListingVisibility.public_: 'public',
  ListingVisibility.private_: 'private',
};

const _$ChatRoleEnumMap = {
  ChatRole.seller: 'seller',
  ChatRole.buyer: 'buyer',
  ChatRole.other: 'other',
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.system: 'system',
};

const _$MessageStatusEnumMap = {
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.read: 'read',
};

const _$OfferStatusEnumMap = {
  OfferStatus.proposed: 'proposed',
  OfferStatus.accepted: 'accepted',
  OfferStatus.rejected: 'rejected',
  OfferStatus.cancelled: 'cancelled',
  OfferStatus.expired: 'expired',
};

const _$ReservationStatusEnumMap = {
  ReservationStatus.active: 'active',
  ReservationStatus.expired: 'expired',
  ReservationStatus.cancelled: 'cancelled',
};

const _$OrderStatusEnumMap = {
  OrderStatus.initiated: 'initiated',
  OrderStatus.pendingPayment: 'pending_payment',
  OrderStatus.escrowHeld: 'escrow_held',
  OrderStatus.shipped: 'shipped',
  OrderStatus.delivered: 'delivered',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.disputed: 'disputed',
  OrderStatus.refunded: 'refunded',
};

const _$EscrowStatusEnumMap = {
  EscrowStatus.opened: 'opened',
  EscrowStatus.held: 'held',
  EscrowStatus.released: 'released',
  EscrowStatus.refunded: 'refunded',
  EscrowStatus.cancelled: 'cancelled',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.requiresAction: 'requires_action',
  PaymentStatus.authorized: 'authorized',
  PaymentStatus.captured: 'captured',
  PaymentStatus.failed: 'failed',
  PaymentStatus.refunded: 'refunded',
};

const _$DisputeActorEnumMap = {
  DisputeActor.buyer: 'buyer',
  DisputeActor.seller: 'seller',
};

const _$DisputeReasonEnumMap = {
  DisputeReason.notAsDescribed: 'not_as_described',
  DisputeReason.damaged: 'damaged',
  DisputeReason.lateDelivery: 'late_delivery',
  DisputeReason.noShow: 'no_show',
  DisputeReason.other: 'other',
};

const _$DisputeStatusEnumMap = {
  DisputeStatus.open: 'open',
  DisputeStatus.underReview: 'under_review',
  DisputeStatus.resolvedRefund: 'resolved_refund',
  DisputeStatus.resolvedRelease: 'resolved_release',
  DisputeStatus.closed: 'closed',
};

const _$ReviewRoleEnumMap = {
  ReviewRole.buyer: 'buyer',
  ReviewRole.seller: 'seller',
};

const _$NotificationViaEnumMap = {
  NotificationVia.push: 'push',
  NotificationVia.email: 'email',
  NotificationVia.inapp: 'inapp',
};

const _$NotificationStatusEnumMap = {
  NotificationStatus.queued: 'queued',
  NotificationStatus.sent: 'sent',
  NotificationStatus.failed: 'failed',
  NotificationStatus.read: 'read',
};

const _$DiscountTypeEnumMap = {
  DiscountType.percent: 'percent',
  DiscountType.fixed: 'fixed',
};

const _$CouponStatusEnumMap = {
  CouponStatus.active: 'active',
  CouponStatus.inactive: 'inactive',
  CouponStatus.expired: 'expired',
};

const _$DevicePlatformEnumMap = {
  DevicePlatform.android: 'android',
  DevicePlatform.ios: 'ios',
  DevicePlatform.web: 'web',
};

const _$AbuseTargetEnumMap = {
  AbuseTarget.user: 'user',
  AbuseTarget.listing: 'listing',
  AbuseTarget.message: 'message',
  AbuseTarget.order: 'order',
};

const _$AbuseReasonEnumMap = {
  AbuseReason.spam: 'spam',
  AbuseReason.fraud: 'fraud',
  AbuseReason.abuse: 'abuse',
  AbuseReason.other: 'other',
};

const _$AbuseStatusEnumMap = {
  AbuseStatus.open: 'open',
  AbuseStatus.underReview: 'under_review',
  AbuseStatus.resolved: 'resolved',
  AbuseStatus.rejected: 'rejected',
};
