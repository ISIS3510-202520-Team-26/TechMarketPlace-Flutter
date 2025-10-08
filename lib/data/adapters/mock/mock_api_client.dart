import 'dart:async';
import 'dart:math';

class MockApiClient {
  MockApiClient._();
  static final MockApiClient instance = MockApiClient._();

  final Map<String, Map<String, dynamic>> _listings = {
    'l-1': {
      'id': 'l-1',
      'sellerId': 'u-1',
      'priceAmount': 120.0,
      'priceCurrency': 'USD',
      'campus': 'Main',
      'photos': <String>[],
      'type': 'book',
      'details': {
        'isbn': '9780132350884',
        'title': 'Clean Code',
        'author': 'Robert C. Martin',
        'edition': '1',
        'category': 'ENGINEERING',
      },
    },
    'l-2': {
      'id': 'l-2',
      'sellerId': 'u-2',
      'priceAmount': 40.0,
      'priceCurrency': 'USD',
      'campus': null,
      'photos': <String>[],
      'type': 'material',
      'details': {
        'materialType': 'notes',
        'courseCode': 'CS101',
        'semester': '2024-1',
        'instructor': 'Doe',
        'condition': 'A',
        'title': 'Parcial 1',
      },
    },
    'l-3': {
      'id': 'l-3',
      'sellerId': 'u-1',
      'priceAmount': 600.0,
      'priceCurrency': 'USD',
      'campus': 'North',
      'photos': <String>[],
      'type': 'tech',
      'details': {
        'brand': 'Apple',
        'model': 'iPad',
        'condition': 'USED',
        'specs': {'ram': '4GB'},
        'warranty': null,
      },
    },
  };

  final Set<String> _favorites = {};

  final Map<String, Map<String, dynamic>> _threads = {};
  final Map<String, List<Map<String, dynamic>>> _messages = {};
  final Map<String, StreamController<List<Map<String, dynamic>>>> _msgStreams = {};

  Map<String, dynamic>? _currentUser = {
    'id': 'u-1',
    'email': 'me@example.com',
    'name': 'Mock User',
    'campus': 'Main',
  };
  final Map<String, Map<String, dynamic>> _users = {
    'u-1': {'id': 'u-1', 'email': 'me@example.com', 'name': 'Mock User', 'campus': 'Main'},
    'u-2': {'id': 'u-2', 'email': 'sara@example.com', 'name': 'Sara', 'campus': 'North'},
  };

  Future<Map<String, dynamic>?> getListing(String id) async {
    await Future.delayed(const Duration(milliseconds: 120));
    return _listings[id];
  }

  Future<Map<String, dynamic>> createListing(Map<String, dynamic> payload) async {
    await Future.delayed(const Duration(milliseconds: 120));
    final id = 'l-${_listings.length + 1}';
    final rec = Map<String, dynamic>.from(payload)..['id'] = id;
    _listings[id] = rec;
    return rec;
  }

  Future<void> toggleFavorite(String id) async {
    await Future.delayed(const Duration(milliseconds: 80));
    if (_favorites.contains(id)) {
      _favorites.remove(id);
    } else {
      _favorites.add(id);
    }
  }

  Future<List<Map<String, dynamic>>> search(Map<String, dynamic> filters) async {
    await Future.delayed(const Duration(milliseconds: 160));
    final q = (filters['query'] as String?)?.toLowerCase().trim();
    final type = filters['type'] as String?;
    return _listings.values.where((e) {
      if (type != null && e['type'] != type) return false;
      if (q == null || q.isEmpty) return true;
      final d = e['details'] as Map<String, dynamic>;
      final title = (d['title'] ?? d['model'] ?? d['brand'] ?? '').toString().toLowerCase();
      return title.contains(q);
    }).toList(growable: false);
  }

  Future<List<String>> suggestQueries(String prefix) async {
    await Future.delayed(const Duration(milliseconds: 80));
    if (prefix.trim().isEmpty) return ['ipad', 'clean code', 'cs101'];
    return [prefix, '$prefix used', '$prefix cheap'];
  }

  Future<List<String>> categories() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return ['TEXTBOOKS', 'ELECTRONICS', 'PHONES', 'ACCESSORIES', 'SERVICES'];
  }

  Future<Map<String, dynamic>> startChat(String listingId) async {
    await Future.delayed(const Duration(milliseconds: 120));
    final id = 't-${_threads.length + 1}';
    final buyerId = _currentUser?['id'] as String? ?? 'u-1';
    final listing = _listings[listingId];
    final sellerId = listing?['sellerId'] as String? ?? 'u-2';
    final thread = {
      'id': id,
      'buyerId': buyerId,
      'sellerId': sellerId,
      'listingId': listingId,
      'status': 'active',
    };
    _threads[id] = thread;
    _messages[id] = <Map<String, dynamic>>[];
    _msgStreams[id] = StreamController<List<Map<String, dynamic>>>.broadcast();
    _msgStreams[id]!.add(const []);
    return thread;
  }

  Future<void> sendMessage(String threadId, Map<String, dynamic> msg) async {
    await Future.delayed(const Duration(milliseconds: 60));
    final list = _messages[threadId];
    if (list == null) return;
    list.add(msg);
    _msgStreams[threadId]?.add(List<Map<String, dynamic>>.from(list));
  }

  Stream<List<Map<String, dynamic>>> messages(String threadId) {
    _msgStreams.putIfAbsent(threadId, () => StreamController<List<Map<String, dynamic>>>.broadcast()..add(const []));
    return _msgStreams[threadId]!.stream;
  }

  Future<void> endChat(String threadId, {String? reason}) async {
    await Future.delayed(const Duration(milliseconds: 60));
    final t = _threads[threadId];
    if (t != null) t['status'] = 'ended';
    _msgStreams[threadId]?.close();
  }

  // ---------- Escrow / Payments ----------
  Future<bool> attemptPayment(String orderId, double amount, String currency) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return Random().nextBool();
  }

  Future<String> escrowHold(String orderId) async {
    await Future.delayed(const Duration(milliseconds: 120));
    return 'HELD';
    // 'FAILED' / 'DISPUTED' / 'RELEASED' ...
  }

  Future<String> escrowRelease(String orderId) async {
    await Future.delayed(const Duration(milliseconds: 120));
    return 'RELEASED';
  }

  Future<String> escrowDispute(String orderId, String reason) async {
    await Future.delayed(const Duration(milliseconds: 120));
    return 'DISPUTED';
  }

  // ---------- Auth / User ----------
  Future<Map<String, dynamic>?> currentUser() async {
    await Future.delayed(const Duration(milliseconds: 60));
    return _currentUser;
  }

  Future<void> signIn(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _currentUser = _users.values.firstWhere(
      (u) => u['email'] == email,
      orElse: () => {'id': 'u-3', 'email': email, 'name': 'New User', 'campus': null},
    );
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(milliseconds: 60));
    _currentUser = null;
  }

  Future<Map<String, dynamic>?> getUser(String id) async {
    await Future.delayed(const Duration(milliseconds: 80));
    return _users[id];
  }

  Future<void> updateUser(Map<String, dynamic> payload) async {
    await Future.delayed(const Duration(milliseconds: 80));
    final id = payload['id'] as String;
    _users[id] = payload;
    if (_currentUser?['id'] == id) _currentUser = payload;
  }
}
