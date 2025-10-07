abstract class AppRoutes {
  static const root = '/';
  static const search = '/search';
  static const listing = '/listing/:id';
  static const listingQuick = '/listing/:id/quick';
  static const listingChat = '/listing/:id/chat';
  static const checkout = '/checkout/:listingId';
  static const insights = '/insights';
  static const settings = '/settings';

  static const paramListingId = 'id';
  static const paramCheckoutListingId = 'listingId';
}
