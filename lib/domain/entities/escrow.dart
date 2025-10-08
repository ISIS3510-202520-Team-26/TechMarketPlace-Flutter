enum EscrowStatus { PENDING, HELD, RELEASED, DISPUTED, FAILED }

enum EscrowStep {
  listing_viewed,
  chat_started,
  checkout_started,
  payment_attempted,
  payment_made,
}

extension EscrowStatusX on EscrowStatus {
  String get label => switch (this) {
        EscrowStatus.PENDING => 'Pending',
        EscrowStatus.HELD => 'Held',
        EscrowStatus.RELEASED => 'Released',
        EscrowStatus.DISPUTED => 'Disputed',
        EscrowStatus.FAILED => 'Failed',
      };
}
