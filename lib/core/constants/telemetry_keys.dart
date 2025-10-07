abstract class TelemetryEvents {
  static const appOpen = 'app_open';
  static const sectionViewed = 'section_viewed';
  static const searchStarted = 'search_started';
  static const searchCompleted = 'search_completed';
  static const filterApplied = 'filter_applied';
  static const listingViewed = 'listing_viewed';
  static const quickViewOpened = 'quick_view_opened';
  static const productPageOpened = 'product_page_opened';
  static const chatStarted = 'chat_started';
  static const chatMessageSent = 'chat_message_sent';
  static const chatEnded = 'chat_ended';
  static const checkoutStarted = 'checkout_started';
  static const paymentAttempted = 'payment_attempted';
  static const escrowStep = 'escrow_step';
  static const escrowResult = 'escrow_result';
  static const priceSuggestionShown = 'price_suggestion_shown';
  static const priceSuggestionAccepted = 'price_suggestion_accepted';
  static const listingPublished = 'listing_published';
  static const featureUsed = 'feature_used';
  static const insightsOpened = 'insights_opened';
  static const sessionEnd = 'session_end';
}

abstract class TelemetryProps {
  static const version = 'version';
  static const platform = 'platform';
  static const durationMs = 'duration_ms';


  static const query = 'query';
  static const campus = 'campus';
  static const category = 'category';
  static const filtersHash = 'filters_hash';
  static const resultCount = 'result_count';
  static const sort = 'sort';
  static const filterName = 'name';
  static const filterValue = 'value';
  static const fromScreen = 'from_screen';

  static const listingId = 'listing_id';
  static const brand = 'brand';
  static const price = 'price';

  static const threadId = 'thread_id';
  static const stage = 'stage';
  static const reason = 'reason';

  static const orderId = 'order_id';
  static const amount = 'amount';
  static const escrow = 'escrow';
  static const step = 'step';
  static const status = 'status';
  static const result = 'result';

  static const featureKey = 'feature_key';
  static const context = 'context';
  static const range = 'range';
  static const charts = 'charts';
}

abstract class TelemetryTimers {
  static const searchDuration = 'search_duration';   // BQ 5.1
  static const sectionDwell = 'section_dwell';       // BQ 2.4
  static const generic = 'generic';
}

abstract class TelemetryFunnels {
  static const purchase = <String>[
    TelemetryEvents.searchStarted,
    TelemetryEvents.listingViewed,
    TelemetryEvents.chatStarted,
    TelemetryEvents.checkoutStarted,
    TelemetryEvents.paymentAttempted,
    TelemetryEvents.escrowResult,
  ];

  static const chat = <String>[
    TelemetryEvents.chatStarted,
    TelemetryEvents.chatMessageSent,
    TelemetryEvents.chatEnded,
  ];

  static const escrow = <String>[
    TelemetryEvents.checkoutStarted,
    TelemetryEvents.paymentAttempted,
    TelemetryEvents.escrowStep,
    TelemetryEvents.escrowResult,
  ];
}
