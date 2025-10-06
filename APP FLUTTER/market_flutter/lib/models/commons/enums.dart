import 'package:json_annotation/json_annotation.dart';

part 'enums.g.dart';

@JsonEnum(alwaysCreate: true)
enum UserRole {
  @JsonValue('student') student,
  @JsonValue('moderator') moderator,
  @JsonValue('admin') admin,
}

@JsonEnum(alwaysCreate: true)
enum KycStatus {
  @JsonValue('none') none,
  @JsonValue('pending') pending,
  @JsonValue('verified') verified,
  @JsonValue('rejected') rejected,
}

@JsonEnum(alwaysCreate: true)
enum ListingCondition {
  @JsonValue('new') new_,
  @JsonValue('used') used,
  @JsonValue('refurbished') refurbished,
}

@JsonEnum(alwaysCreate: true)
enum ListingStatus {
  @JsonValue('draft') draft,
  @JsonValue('active') active,
  @JsonValue('reserved') reserved,
  @JsonValue('sold') sold,
  @JsonValue('archived') archived,
  @JsonValue('removed') removed,
}

@JsonEnum(alwaysCreate: true)
enum ListingVisibility {
  @JsonValue('public') public_,
  @JsonValue('private') private_,
}

@JsonEnum(alwaysCreate: true)
enum ChatRole {
  @JsonValue('seller') seller,
  @JsonValue('buyer') buyer,
  @JsonValue('other') other,
}

@JsonEnum(alwaysCreate: true)
enum MessageType {
  @JsonValue('text') text,
  @JsonValue('image') image,
  @JsonValue('system') system,
}

@JsonEnum(alwaysCreate: true)
enum MessageStatus {
  @JsonValue('sent') sent,
  @JsonValue('delivered') delivered,
  @JsonValue('read') read,
}

@JsonEnum(alwaysCreate: true)
enum OfferStatus {
  @JsonValue('proposed') proposed,
  @JsonValue('accepted') accepted,
  @JsonValue('rejected') rejected,
  @JsonValue('cancelled') cancelled,
  @JsonValue('expired') expired,
}

@JsonEnum(alwaysCreate: true)
enum ReservationStatus {
  @JsonValue('active') active,
  @JsonValue('expired') expired,
  @JsonValue('cancelled') cancelled,
}

@JsonEnum(alwaysCreate: true)
enum OrderStatus {
  @JsonValue('initiated') initiated,
  @JsonValue('pending_payment') pendingPayment,
  @JsonValue('escrow_held') escrowHeld,
  @JsonValue('shipped') shipped,
  @JsonValue('delivered') delivered,
  @JsonValue('completed') completed,
  @JsonValue('cancelled') cancelled,
  @JsonValue('disputed') disputed,
  @JsonValue('refunded') refunded,
}

@JsonEnum(alwaysCreate: true)
enum EscrowStatus {
  @JsonValue('opened') opened,
  @JsonValue('held') held,
  @JsonValue('released') released,
  @JsonValue('refunded') refunded,
  @JsonValue('cancelled') cancelled,
}

@JsonEnum(alwaysCreate: true)
enum PaymentStatus {
  @JsonValue('requires_action') requiresAction,
  @JsonValue('authorized') authorized,
  @JsonValue('captured') captured,
  @JsonValue('failed') failed,
  @JsonValue('refunded') refunded,
}

@JsonEnum(alwaysCreate: true)
enum DisputeActor {
  @JsonValue('buyer') buyer,
  @JsonValue('seller') seller,
}

@JsonEnum(alwaysCreate: true)
enum DisputeReason {
  @JsonValue('not_as_described') notAsDescribed,
  @JsonValue('damaged') damaged,
  @JsonValue('late_delivery') lateDelivery,
  @JsonValue('no_show') noShow,
  @JsonValue('other') other,
}

@JsonEnum(alwaysCreate: true)
enum DisputeStatus {
  @JsonValue('open') open,
  @JsonValue('under_review') underReview,
  @JsonValue('resolved_refund') resolvedRefund,
  @JsonValue('resolved_release') resolvedRelease,
  @JsonValue('closed') closed,
}

@JsonEnum(alwaysCreate: true)
enum ReviewRole {
  @JsonValue('buyer') buyer,
  @JsonValue('seller') seller,
}

@JsonEnum(alwaysCreate: true)
enum NotificationVia {
  @JsonValue('push') push,
  @JsonValue('email') email,
  @JsonValue('inapp') inapp,
}

@JsonEnum(alwaysCreate: true)
enum NotificationStatus {
  @JsonValue('queued') queued,
  @JsonValue('sent') sent,
  @JsonValue('failed') failed,
  @JsonValue('read') read,
}

@JsonEnum(alwaysCreate: true)
enum DiscountType {
  @JsonValue('percent') percent,
  @JsonValue('fixed') fixed,
}

@JsonEnum(alwaysCreate: true)
enum CouponStatus {
  @JsonValue('active') active,
  @JsonValue('inactive') inactive,
  @JsonValue('expired') expired,
}

@JsonEnum(alwaysCreate: true)
enum DevicePlatform {
  @JsonValue('android') android,
  @JsonValue('ios') ios,
  @JsonValue('web') web,
}

@JsonEnum(alwaysCreate: true)
enum AbuseTarget {
  @JsonValue('user') user,
  @JsonValue('listing') listing,
  @JsonValue('message') message,
  @JsonValue('order') order,
}

@JsonEnum(alwaysCreate: true)
enum AbuseReason {
  @JsonValue('spam') spam,
  @JsonValue('fraud') fraud,
  @JsonValue('abuse') abuse,
  @JsonValue('other') other,
}

@JsonEnum(alwaysCreate: true)
enum AbuseStatus {
  @JsonValue('open') open,
  @JsonValue('under_review') underReview,
  @JsonValue('resolved') resolved,
  @JsonValue('rejected') rejected,
}
