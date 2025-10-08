class AppRoutes {
  static const String root = '/';
  static const String search = '/search';
  static const String listing = '/listing/:id';
  static const String listingQuick = '/listing/:id/quick';
  static const String listingChat = '/listing/:id/chat';
  static const String checkout = '/checkout/:listingId';
  static const String insights = '/insights';
  static const String settings = '/settings';

  static String listingOf(String id) => '/listing/$id';
  static String listingQuickOf(String id) => '/listing/$id/quick';
  static String listingChatOf(String id) => '/listing/$id/chat';
  static String checkoutOf(String listingId) => '/checkout/$listingId';
}
