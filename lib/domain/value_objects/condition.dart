enum Condition { NEW, USED, A, B }

extension ConditionX on Condition {
  String get label => switch (this) {
        Condition.NEW => 'New',
        Condition.USED => 'Used',
        Condition.A => 'Grade A',
        Condition.B => 'Grade B',
      };
}
