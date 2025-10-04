class AppEnv {
  static const bool useMocks =
      bool.fromEnvironment('USE_MOCKS', defaultValue: true);
}
