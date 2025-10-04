import 'dart:math';

import '../../models/user/user.dart';
import '../../models/user/profile.dart';
import '../../models/user/kyc_verification.dart';

import '../../models/catalog/category.dart';
import '../../models/catalog/brand.dart';
import '../../models/catalog/listing.dart';
import '../../models/catalog/listing_photo.dart';
import '../../models/catalog/favorite.dart';
import '../../models/catalog/price_suggestion.dart';

import '../../models/chat/chat.dart';
import '../../models/chat/chat_participant.dart';
import '../../models/chat/message.dart';

import '../../models/commerce/offer.dart';
import '../../models/commerce/order.dart';
import '../../models/commerce/escrow.dart';
import '../../models/commerce/payment.dart';
import '../../models/commerce/dispute.dart';
import '../../models/commerce/review.dart';
import '../../models/commerce/coupon.dart';
import '../../models/commerce/order_coupon.dart';

import '../../models/device/device.dart';
import '../../models/device/session.dart';

import '../../models/telemetry/telemetry_event.dart';

import '../../models/safety/abuse_report.dart';
import '../../models/safety/audit_log.dart';

import '../common/app_env.dart';

final bool _USE_MOCKS = AppEnv.useMocks;

String _uuid(int i) {
  final tail = i.toRadixString(16).padLeft(12, '0');
  return '00000000-0000-4000-8000-$tail';
}

Map<String, dynamic> _json(Map<String, dynamic> m) => m;

const String _seller1 = '00000000-0000-4000-8000-000000000111';
const String _buyer1  = '00000000-0000-4000-8000-000000000222';
const String _admin1  = '00000000-0000-4000-8000-000000000333';

final List<String> _locationIds = _USE_MOCKS ? <String>[_uuid(60)]   : <String>[];
final List<String> _deviceIds   = _USE_MOCKS ? <String>[_uuid(8000)] : <String>[];
final List<String> _sessionIds  = _USE_MOCKS ? <String>[_uuid(8100)] : <String>[];

final List<User> _users = _USE_MOCKS
    ? [
        User.fromJson({
          'id': _seller1,
          'email': 'seller@campus.edu',
          'phone': '+573001112233',
          'password_hash': 'hash\$seller',
          'role': 'student',
          'kyc_status': 'verified',
          'email_verified': true,
          'phone_verified': false,
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
          'deleted_at': null,
        }),
        User.fromJson({
          'id': _buyer1,
          'email': 'buyer@campus.edu',
          'phone': '+573009998877',
          'password_hash': 'hash\$buyer',
          'role': 'student',
          'kyc_status': 'pending',
          'email_verified': true,
          'phone_verified': true,
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
          'deleted_at': null,
        }),
        User.fromJson({
          'id': _admin1,
          'email': 'admin@campus.edu',
          'phone': '+573008881111',
          'password_hash': 'hash\$admin',
          'role': 'admin',
          'kyc_status': 'none',
          'email_verified': true,
          'phone_verified': true,
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
          'deleted_at': null,
        }),
      ]
    : <User>[];

final List<Profile> _profiles = _USE_MOCKS
    ? [
        Profile.fromJson({
          'user_id': _seller1,
          'display_name': 'Seller One',
          'avatar_url': 'https://i.pravatar.cc/100?u=$_seller1',
          'bio': 'I sell tech stuff',
          'campus': 'Main',
          'default_location_id': null,
          'preferences': _json({'lang': 'es', 'theme': 'light'}),
          'rating_total': 46,
          'rating_count': 10,
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
        }),
        Profile.fromJson({
          'user_id': _buyer1,
          'display_name': 'Buyer One',
          'avatar_url': 'https://i.pravatar.cc/100?u=$_buyer1',
          'bio': 'Looking for laptops',
          'campus': 'Main',
          'default_location_id': null,
          'preferences': _json({'lang': 'es', 'theme': 'dark'}),
          'rating_total': 0,
          'rating_count': 0,
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
        }),
      ]
    : <Profile>[];

final List<KycVerification> _kyc = _USE_MOCKS
    ? [
        KycVerification.fromJson({
          'id': _uuid(50),
          'user_id': _seller1,
          'provider': 'acme_kyc',
          'status': 'verified',
          'document_type': 'student_id',
          'document_number_enc': 'enc:1234',
          'evidence_urls': ['https://example.com/kyc1'],
          'notes': 'ok',
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
        }),
      ]
    : <KycVerification>[];

final String _rootCategoryId = _uuid(90);
final List<String> _categoryIds =
    _USE_MOCKS ? List.generate(5, (i) => _uuid(100 + i)) : <String>[];

final String _brandAppleId   = _uuid(900);
final String _brandLenovoId  = _uuid(901);
final String _brandSamsungId = _uuid(902);

final List<Category> _categories = _USE_MOCKS
    ? List.generate(5, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return Category.fromJson({
          'id': _categoryIds[i],
          'name': ['Laptops', 'Phones', 'Accessories', 'Textbooks', 'Services'][i],
          'slug': ['laptops', 'phones', 'accessories', 'textbooks', 'services'][i],
          
          'parentId': _rootCategoryId,
          'createdAt': now,
        });
      })
    : <Category>[];

final List<Brand> _brands = _USE_MOCKS
    ? [
        {
          'id': _brandAppleId,   
          'name': 'Apple',
          'slug': 'apple',
        },
        {
          'id': _brandLenovoId, 
          'name': 'Lenovo',
          'slug': 'lenovo',
        },
        {
          'id': _brandSamsungId,
          'name': 'Samsung',
          'slug': 'samsung',
        },
      ].map(Brand.fromJson).toList()
    : <Brand>[];

final List<String> _listingIds =
    _USE_MOCKS ? List.generate(12, (i) => _uuid(1000 + i)) : <String>[];

final List<Listing> _listings = _USE_MOCKS
    ? List.generate(12, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        final catId = _categoryIds[i % _categoryIds.length];

     
        String? brandUuid;
        switch (i % 4) {
          case 0:
            brandUuid = _brandAppleId;
            break;
          case 1:
            brandUuid = _brandLenovoId;
            break;
          case 2:
            brandUuid = _brandSamsungId;
            break;
          default:
            brandUuid = null;
        }

        
        final dto = ListingDto.fromJson({
          'id': _listingIds[i],
          'seller_id': _seller1,
          'category_id': catId,
          'brand_id': brandUuid,
          'location_id': _locationIds.isNotEmpty ? _locationIds.first : null,
          'title': 'Product ${i + 1}',
          'description': 'Great condition. Includes charger and case.',
          'price_cents': 19900 + i * 500,
          'currency': 'USD',
          'condition': i.isEven ? 'used' : 'new',
          'quantity': 1,
          'media_count': 1,
          'attributes': _json({'warranty': i.isEven}),
          'shipping_options': <Map<String, dynamic>>[],
          'status': 'active',
          'visibility': 'public',
          'created_at': now,
          'updated_at': now,
          'deleted_at': null,
        });
        return dto.toDomain();
      })
    : <Listing>[];

final List<List<ListingPhoto>> _photosByIndex = _USE_MOCKS
    ? List.generate(_listingIds.length, (i) {
        return [
          ListingPhoto.fromJson({
            'id': _uuid(5000 + i),
            'listing_id': _listingIds[i],
            'url': 'https://picsum.photos/seed/${_listingIds[i]}/400',
            'alt_text': 'Photo of Product ${i + 1}',
            'position': 0,
            'is_primary': true,
            'created_at': DateTime.now().toUtc().toIso8601String(),
          }),
        ];
      })
    : <List<ListingPhoto>>[];

final List<Favorite> _favorites = _USE_MOCKS
    ? List.generate(4, (i) {
        return Favorite.fromJson({
          'id': _uuid(7000 + i),
          'user_id': _buyer1,
          'listing_id': _listingIds[i],
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'notes': null,
        });
      })
    : <Favorite>[];

final List<PriceSuggestion> _priceSuggestions = _USE_MOCKS
    ? List.generate(6, (i) {
        final cents = 18000 + i * 400;
        return PriceSuggestion.fromJson({
          'id': _uuid(7100 + i),
          'listing_id': _listingIds[i],
          'suggested_price_cents': cents,
          'currency': 'USD',
          'model_version': 'v1.0',
          'accepted': i.isEven,
          'accepted_at':
              i.isEven ? DateTime.now().toUtc().toIso8601String() : null,
          'features': _json({'views': 12 + i, 'comparables': 5}),
          'created_at': DateTime.now().toUtc().toIso8601String(),
        });
      })
    : <PriceSuggestion>[];

final List<String> _chatIds =
    _USE_MOCKS ? List.generate(5, (i) => _uuid(2000 + i)) : <String>[];

final List<Chat> _chats = _USE_MOCKS
    ? List.generate(5, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return Chat.fromJson({
          'id': _chatIds[i],
          'listing_id': _listingIds[i],
          'created_at': now,
          'updated_at': now,
        });
      })
    : <Chat>[];

final List<ChatParticipant> _chatParticipants = _USE_MOCKS
    ? List.generate(_chats.length * 2, (i) {
        final chatIndex = i ~/ 2;
        final roleStr = (i % 2 == 0) ? 'seller' : 'buyer';
        final userId = roleStr == 'seller' ? _seller1 : _buyer1;
        return ChatParticipant.fromJson({
          'chat_id': _chatIds[chatIndex],
          'user_id': userId,
          'role': roleStr,
          'joined_at': DateTime.now().toUtc().toIso8601String(),
        });
      })
    : <ChatParticipant>[];

final List<List<Message>> _messagesByChat = _USE_MOCKS
    ? List.generate(_chatIds.length, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return [
          Message.fromJson({
            'id': _uuid(3000 + i * 2),
            'chat_id': _chatIds[i],
            'sender_id': _seller1,
            'type': 'text',
            'content_text': '¡Hola! ¿Sigue disponible?',
            'content_json': _json({}),
            'attachment_url': null,
            'status': 'read',
            'sent_at': now,
            'delivered_at': now,
            'read_at': now,
          }),
          Message.fromJson({
            'id': _uuid(3001 + i * 2),
            'chat_id': _chatIds[i],
            'sender_id': _buyer1,
            'type': 'text',
            'content_text': 'Sí, puedo recibirlo hoy después de clase.',
            'content_json': _json({}),
            'attachment_url': null,
            'status': 'delivered',
            'sent_at': now,
            'delivered_at': now,
            'read_at': null,
          }),
        ];
      })
    : <List<Message>>[];

final List<Offer> _offers = _USE_MOCKS
    ? List.generate(4, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return Offer.fromJson({
          'id': _uuid(7200 + i),
          'listing_id': _listingIds[i],
          'buyer_id': _buyer1,
          'chat_id': _chatIds[i],
          'amount_cents': 18000 + i * 300,
          'currency': 'USD',
          'status': i.isEven ? 'proposed' : 'accepted',
          'counter_of': null,
          'expires_at': DateTime.now()
              .toUtc()
              .add(const Duration(days: 2))
              .toIso8601String(),
          'created_at': now,
        });
      })
    : <Offer>[];

final List<String> _orderIds =
    _USE_MOCKS ? List.generate(3, (i) => _uuid(4000 + i)) : <String>[];

final List<Order> _orders = _USE_MOCKS
    ? List.generate(3, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return Order.fromJson({
          'id': _orderIds[i],
          'listing_id': _listingIds[i],
          'seller_id': _seller1,
          'buyer_id': _buyer1,
          'offer_id': _offers.isNotEmpty
              ? (_offers.first.toJson()['id'] as String)
              : null,
          'price_cents': _listings[i].price.amountCents,
          'currency': 'USD',
          'quantity': 1,
          'status': i == 0
              ? 'escrow_held'
              : i == 1
                  ? 'delivered'
                  : 'initiated',
          'created_at': now,
          'updated_at': now,
        });
      })
    : <Order>[];

final List<Escrow> _escrows = _USE_MOCKS
    ? List.generate(2, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return Escrow.fromJson({
          'id': _uuid(7400 + i),
          'order_id': _orderIds[i],
          'status': i == 0 ? 'held' : 'released',
          'held_amount_cents': _listings[i].price.amountCents,
          'currency': 'USD',
          'provider': 'stripe',
          'opened_at': now,
          'released_at': i == 1 ? now : null,
          'refunded_at': null,
        });
      })
    : <Escrow>[];

final List<Payment> _payments = _USE_MOCKS
    ? List.generate(2, (i) {
        final now = DateTime.now().toUtc().toIso8601String();
        return Payment.fromJson({
          'id': _uuid(7500 + i),
          'order_id': _orderIds[i],
          'provider': 'stripe',
          'provider_intent_id': 'pi_${7500 + i}',
          'status': i == 0 ? 'captured' : 'authorized',
          'amount_cents': _listings[i].price.amountCents,
          'fee_cents': 350,
          'currency': 'USD',
          'payment_method': 'card',
          'idempotency_key': 'idem_${7500 + i}',
          'occurred_at': now,
        });
      })
    : <Payment>[];

final List<Dispute> _disputes = _USE_MOCKS
    ? [
        Dispute.fromJson({
          'id': _uuid(7600),
          'order_id': _orderIds[1],
          'opened_by': 'buyer',
          'reason': 'not_as_described',
          'description': 'Screen has scratches',
          'status': 'open',
          'resolution_notes': null,
          'opened_at': DateTime.now().toUtc().toIso8601String(),
          'closed_at': null,
        })
      ]
    : <Dispute>[];

final List<Review> _reviews = _USE_MOCKS
    ? [
        Review.fromJson({
          'id': _uuid(7700),
          'order_id': _orderIds[0],
          'rater_id': _buyer1,
          'rated_user_id': _seller1,
          'role': 'buyer',
          'rating': 5,
          'comment': 'Great seller!',
          'created_at': DateTime.now().toUtc().toIso8601String(),
        }),
      ]
    : <Review>[];

final List<Coupon> _coupons = _USE_MOCKS
    ? [
        Coupon.fromJson({
          'id': _uuid(7800),
          'code': 'WELCOME10',
          'description': '10% off',
          'discount_type': 'percent',
          'amount_cents': 0,
          'currency': 'USD',
          'constraints': _json({'min_cents': 10000}),
          'status': 'active',
          'valid_from': DateTime.now()
              .toUtc()
              .subtract(const Duration(days: 1))
              .toIso8601String(),
          'valid_to': DateTime.now()
              .toUtc()
              .add(const Duration(days: 30))
              .toIso8601String(),
          'max_uses': 1000,
          'max_uses_per_user': 1,
          'created_by': _admin1,
        }),
        Coupon.fromJson({
          'id': _uuid(7801),
          'code': 'FLAT500',
          'description': 'USD 5.00 off',
          'discount_type': 'fixed',
          'amount_cents': 500,
          'currency': 'USD',
          'constraints': _json({'min_cents': 2000}),
          'status': 'active',
          'valid_from': DateTime.now().toUtc().toIso8601String(),
          'valid_to': DateTime.now()
              .toUtc()
              .add(const Duration(days: 15))
              .toIso8601String(),
          'max_uses': 100,
          'max_uses_per_user': 2,
          'created_by': _admin1,
        }),
      ]
    : <Coupon>[];

final List<OrderCoupon> _orderCoupons = _USE_MOCKS
    ? [
        OrderCoupon.fromJson({
          'id': _uuid(7810),
          'order_id': _orderIds.first,
          'coupon_id': (_coupons.first.toJson()['id'] as String),
          'amount_applied_cents': 1000,
        }),
      ]
    : <OrderCoupon>[];

final List<Device> _devices = _USE_MOCKS
    ? [
        Device.fromJson({
          'id': _deviceIds.first,
          'user_id': _buyer1,
          'platform': 'android',
          'device_model': 'Pixel_7',
          'push_token_enc': 'enc:push',
          'is_verified': true,
          'metadata': _json({'sdk': 34}),
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'updated_at': DateTime.now().toUtc().toIso8601String(),
        }),
      ]
    : <Device>[];

final List<Session> _sessions = _USE_MOCKS
    ? [
        Session.fromJson({
          'id': _sessionIds.first,
          'user_id': _buyer1,
          'device_id': _deviceIds.first,
          'app_version': '1.0.0',
          'os_version': 'Android 14',
          'locale': 'es_CO',
          'timezone': 'America/Bogota',
          'started_at': DateTime.now().toUtc().toIso8601String(),
          'last_activity_at': DateTime.now().toUtc().toIso8601String(),
          'ended_at': null,
        }),
      ]
    : <Session>[];

final List<TelemetryEvent> _telemetry = _USE_MOCKS
    ? [
        TelemetryEvent.fromJson({
          'id': _uuid(8200),
          'event_time': DateTime.now().toUtc().toIso8601String(),
          'ingest_time': DateTime.now().toUtc().toIso8601String(),
          'user_id': _buyer1,
          'session_id': _sessionIds.first,
          'device_id': _deviceIds.first,
          'event_name': 'section_view_started',
          'page': 'home',
          'feature': 'dashboard',
          'listing_id': _listingIds.first,
          'chat_id': _chatIds.first,
          'order_id': _orderIds.first,
          'offer_id': _offers.isNotEmpty
              ? (_offers.first.toJson()['id'] as String)
              : null,
          'category_id': _categoryIds.first,
          'duration_ms': 0,
          'numeric_value': 1,
          'str_value': 'ok',
          'context': _json({'build': 'debug'}),
          'geohash': '6gkzwgj',
          'app_version': '1.0.0',
          'os': 'android',
          'country_code': 'CO',
          'campus': 'Main',
        }),
      ]
    : <TelemetryEvent>[];

final List<AbuseReport> _abuse = _USE_MOCKS
    ? [
        AbuseReport.fromJson({
          'id': _uuid(8300),
          'reporter_id': _buyer1,
          'target_type': 'listing',
          'target_id': _listingIds.first,
          'reason': 'spam',
          'description': 'Suspicious listing',
          'status': 'open',
          'created_at': DateTime.now().toUtc().toIso8601String(),
          'resolved_at': null,
        }),
      ]
    : <AbuseReport>[];

final List<AuditLog> _audit = _USE_MOCKS
    ? [
        AuditLog.fromJson({
          'id': _uuid(8400),
          'actor_user_id': _admin1,
          'action': 'listing.update',
          'entity_type': 'listing',
          'entity_id': _listingIds.first,
          'data_before': _json({'status': 'active'}),
          'data_after': _json({'status': 'sold'}),
          'ip': '10.1.2.3',
          'user_agent': 'mock UA',
          'occurred_at': DateTime.now().toUtc().toIso8601String(),
        }),
      ]
    : <AuditLog>[];

class MockRepo {
  static List<User> users() => _users;
  static List<Profile> profiles() => _profiles;
  static List<KycVerification> kycVerifications() => _kyc;

  static List<Category> categories() => _categories;
  static List<Brand> brands() => _brands;

  static List<Listing> listings({String? categorySlug, String? query}) {
    if (!_USE_MOCKS) return const [];
    var list = List<Listing>.from(_listings);
    if (categorySlug != null) {
      final idx = _categories.indexWhere((c) => c.slug == categorySlug);
      if (idx != -1) {
        final catId = _categoryIds[idx];
        list = list
            .where((l) => l.categoryId.asString == catId)
            .toList();
      }
    }
    if (query != null && query.trim().isNotEmpty) {
      final q = query.toLowerCase();
      list = list.where((l) => l.title.toLowerCase().contains(q)).toList();
    }
    return list;
  }

  static Listing? listingById(String id) {
    if (!_USE_MOCKS) return null;
    int idx = _listingIds.indexOf(id);
    if (idx == -1) {
      idx = _listings.indexWhere((l) => l.id.asString == id);
    }
    if (idx >= 0) return _listings[idx];
    return null;
  }

  static List<ListingPhoto> photos(String listingId) {
    if (!_USE_MOCKS) return const [];
    int idx = _listingIds.indexOf(listingId);
    if (idx == -1) {
      idx = _listings.indexWhere((l) => l.id.asString == listingId);
    }
    if (idx >= 0 && idx < _photosByIndex.length) {
      return _photosByIndex[idx];
    }
    return const [];
  }

  static List<Favorite> favoritesOf(String userId) => _USE_MOCKS
      ? _favorites
          .where((f) => ((f.toJson()['user_id'] as String?) ?? '') == userId)
          .toList()
      : const [];

  static List<PriceSuggestion> priceSuggestions(String listingId) => _USE_MOCKS
      ? _priceSuggestions
          .where((p) =>
              ((p.toJson()['listing_id'] as String?) ?? '') == listingId)
          .toList()
      : const [];

  // Chat
  static List<Chat> chats() => _USE_MOCKS ? _chats : const [];
  static List<ChatParticipant> participants(String chatId) => _USE_MOCKS
      ? _chatParticipants
          .where((p) => ((p.toJson()['chat_id'] as String?) ?? '') == chatId)
          .toList()
      : const [];
  static List<Message> messages(String chatId) {
    if (!_USE_MOCKS) return const [];
    int idx = _chatIds.indexOf(chatId);
    if (idx == -1) idx = _chats.indexWhere(
        (c) => (c.toJson()['id'] as String) == chatId);
    if (idx >= 0 && idx < _messagesByChat.length) return _messagesByChat[idx];
    return const [];
  }

  static List<Offer> offers(String listingId) => _USE_MOCKS
      ? _offers
          .where((o) =>
              ((o.toJson()['listing_id'] as String?) ?? '') == listingId)
          .toList()
      : const [];

  static List<Order> orders() => _USE_MOCKS ? _orders : const [];
  static List<Escrow> escrows(String orderId) => _USE_MOCKS
      ? _escrows
          .where(
              (e) => ((e.toJson()['order_id'] as String?) ?? '') == orderId)
          .toList()
      : const [];
  static List<Payment> payments(String orderId) => _USE_MOCKS
      ? _payments
          .where(
              (p) => ((p.toJson()['order_id'] as String?) ?? '') == orderId)
          .toList()
      : const [];
  static List<Dispute> disputes(String orderId) => _USE_MOCKS
      ? _disputes
          .where(
              (d) => ((d.toJson()['order_id'] as String?) ?? '') == orderId)
          .toList()
      : const [];
  static List<Review> reviewsOfUser(String userId) => _USE_MOCKS
      ? _reviews
          .where((r) =>
              ((r.toJson()['rated_user_id'] as String?) ?? '') == userId)
          .toList()
      : const [];

  static List<Coupon> coupons() => _USE_MOCKS ? _coupons : const [];
  static List<OrderCoupon> orderCoupons(String orderId) => _USE_MOCKS
      ? _orderCoupons
          .where((oc) =>
              ((oc.toJson()['order_id'] as String?) ?? '') == orderId)
          .toList()
      : const [];

  static List<Device> devicesOf(String userId) => _USE_MOCKS
      ? _devices
          .where((d) => ((d.toJson()['user_id'] as String?) ?? '') == userId)
          .toList()
      : const [];
  static List<Session> sessionsOf(String userId) => _USE_MOCKS
      ? _sessions
          .where((s) => ((s.toJson()['user_id'] as String?) ?? '') == userId)
          .toList()
      : const [];

  static List<TelemetryEvent> telemetry() => _USE_MOCKS ? _telemetry : const [];
  static List<AbuseReport> abuseReports() => _USE_MOCKS ? _abuse : const [];
  static List<AuditLog> auditLogs() => _USE_MOCKS ? _audit : const [];

  static Order? createOrderForListing(String listingId) {
    if (!_USE_MOCKS) return null;
    final idx = _listingIds.indexOf(listingId);
    final l = idx >= 0 ? _listings[idx] : (listingById(listingId) ?? _listings.first);

    final data = {
      'id': _uuid(9000 + Random().nextInt(1000)),
      'listing_id': (idx >= 0 ? _listingIds[idx] : listingId),
      'seller_id': _seller1,
      'buyer_id': _buyer1,
      'offer_id': _offers.isNotEmpty
          ? (_offers.first.toJson()['id'] as String)
          : null,
      'price_cents': l.price.amountCents,
      'currency': 'USD',
      'quantity': 1,
      'status': 'initiated',
      'created_at': DateTime.now().toUtc().toIso8601String(),
      'updated_at': DateTime.now().toUtc().toIso8601String(),
    };
    final order = Order.fromJson(data);
    _orderIds.add(order.toJson()['id'] as String);
    _orders.add(order);
    return order;
  }

  static int suggestedPriceCents(String listingId) {
    if (!_USE_MOCKS) return 0;
    final idx = _listingIds.indexOf(listingId);
    final l = idx >= 0 ? _listings[idx] : (listingById(listingId) ?? _listings.first);
    final base = l.price.amountCents;
    final jitter = Random(listingId.hashCode).nextInt(1500) - 750;
    return (base + jitter).clamp(1000, 500000);
  }

  static Listing addListing({
    required String title,
    required String description,
    required int priceCents,
    String currency = 'USD',
    String? categorySlug,
  }) {
    final id = _uuid(10000 + _listings.length);
    final now = DateTime.now().toUtc().toIso8601String();
    final catId = (categorySlug != null)
        ? (() {
            final i = _categories.indexWhere((c) => c.slug == categorySlug);
            return (i >= 0) ? _categoryIds[i] : _categoryIds.first;
          })()
        : _categoryIds.first;

    final dto = ListingDto.fromJson({
      'id': id,
      'seller_id': _seller1,
      'category_id': catId,
      'brand_id': _brandAppleId,
      'location_id': _locationIds.isNotEmpty ? _locationIds.first : null,
      'title': title,
      'description': description,
      'price_cents': priceCents,
      'currency': currency,
      'condition': 'used',
      'quantity': 1,
      'media_count': 0,
      'attributes': _json({}),
      'shipping_options': <Map<String, dynamic>>[],
      'status': 'active',
      'visibility': 'public',
      'created_at': now,
      'updated_at': now,
      'deleted_at': null,
    });

    final l = dto.toDomain();
    _listingIds.add(id);
    _listings.add(l);
    _photosByIndex.add(const []);
    return l;
  }
}
