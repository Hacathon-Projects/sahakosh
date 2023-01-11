import 'package:sahakosh/models/startup.dart';

class Investor {
  final String id;
  final InvestorProfile profile;
  final List<Startup> investments;

  Investor({
    required this.id,
    required this.profile,
    required this.investments,
  });
}

class InvestorProfile {
  final String name;
  final String emailAddress;
  final String? tempAddress;
  final String? permanentAddress;
  final String? phoneNumber;
  final String? bio;

  InvestorProfile(
      {required this.name,
      required this.emailAddress,
      this.tempAddress,
      this.permanentAddress,
      this.bio,
      this.phoneNumber});
}


