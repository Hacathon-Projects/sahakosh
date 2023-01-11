import 'package:flutter/material.dart';
import 'package:sahakosh/authentication/presentation/create_account_screen.dart';
import 'package:sahakosh/authentication/presentation/landing_screen.dart';
import 'package:sahakosh/core/routes/404.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';

import '../../authentication/presentation/login_as_investor.dart';
import '../../authentication/presentation/login_as_startup.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case RouteConstant.landingScreen:
        return MaterialPageRoute(builder: (context) => const LandingScreen());
      case RouteConstant.createAccountScreen:
        return MaterialPageRoute(
            builder: (context) => const CreateAccountScreen());
      case RouteConstant.startupLoginRoute:
        return MaterialPageRoute(
            builder: (context) => const LoginAsStartupScreen());
      case RouteConstant.investorLoginRoute:
        return MaterialPageRoute(
            builder: (context) => const LoginAsInvestorScreen());

      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound());
    }
  }
}
