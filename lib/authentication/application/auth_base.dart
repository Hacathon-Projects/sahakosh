abstract class AuthBase {
  static void loginAsStartup({
    required String name,
    required String password,
  }) {}

  static void loginAsInvestor({
    required String name,
    required String password,
  }) {}
  static void registerAsInvestor({
    required String name,
    required String password,
    required String email,
  }) {}
  static void registerAsStartup({
    required String name,
    required String password,
    required String email,
  }) {}
}

abstract class AuthDBServiceBase {
  void storeStartupData();
  void storeInvestorData();
}
