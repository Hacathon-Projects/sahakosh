class Startup {
  final String id;
  final StartUpProfile profile;
  final String? tagline;
  final StartupBusinessInfo businessInfo;
  final double lookingFor;

  Startup({
    required this.id,
    required this.profile,
    required this.businessInfo,
    this.tagline,
    required this.lookingFor,
  });
}

class StartupBusinessInfo {
  final int operatingMonths;
  final double totalRevenueLastYear;
  final double totalRevenueLastQuatar;
  final double totalRevenueLastMonth;
  final double businessValuation;
  final String description;
  StartupBusinessInfo({
    required this.operatingMonths,
    required this.businessValuation,
    required this.description,
    this.totalRevenueLastMonth = 0.0,
    this.totalRevenueLastQuatar = 0.0,
    this.totalRevenueLastYear = 0.0,
  });
}

class StartUpProfile {
  final String name;
  final String emailAddress;
  final String phoneNumber;
  final DateTime foundedAt;
  final String bio;
  final String location;

  StartUpProfile({
    required this.name,
    required this.emailAddress,
    required this.foundedAt,
    required this.phoneNumber,
    required this.bio,
    required this.location,
  });
}
