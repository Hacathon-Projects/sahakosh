abstract class AuthBase {
  static void login({
    required String name,
    required String password,
  }) {}
  static void register({
    required String name,
    required String password,
    required String email,
  }) {}
}

abstract class AuthDBServiceBase {
  void storeStartupData();
  void updateStartupData();
  void storeInvestorData();
  void updateInvestorData();
}
