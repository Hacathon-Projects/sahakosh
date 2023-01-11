import 'package:flutter/material.dart';
import 'package:sahakosh/authentication/presentation/create_account_screen.dart';
import 'package:sahakosh/authentication/presentation/landing_screen.dart';
import 'package:sahakosh/core/routes/404.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/investor_ui/presentation/step_1.dart';
import 'package:sahakosh/investor_ui/presentation/step_2.dart';
import 'package:sahakosh/investor_ui/presentation/step_2.dart';
import 'package:sahakosh/startup_ui/presentation/step_1.dart';
import 'package:sahakosh/startup_ui/presentation/step_2.dart';
import 'package:sahakosh/startup_ui/presentation/step_3.dart';

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

      // Investor auth
      case RouteConstant.investorLoginRoute:
        return MaterialPageRoute(
            builder: (context) => const LoginAsInvestorScreen());
      case RouteConstant.investorRegisterStep1Route:
        return MaterialPageRoute(
            builder: (context) => const InvestorRegisterStep1Route());
      case RouteConstant.investorRegisterStep2Route:
        return MaterialPageRoute(
            builder: (context) => const InvestorRegisterStep2Route());

      // Startup auth
      case RouteConstant.startupLoginRoute:
        return MaterialPageRoute(
            builder: (context) => const LoginAsStartupScreen());
      case RouteConstant.startupRegisterStep1Route:
        return MaterialPageRoute(
            builder: (context) => const StartupRegisterStep1Route());
      case RouteConstant.startupRegisterStep2Route:
        return MaterialPageRoute(
            builder: (context) => const StartupRegisterStep2Route());
      case RouteConstant.startupRegisterStep3Route:
        return MaterialPageRoute(
            builder: (context) => const StartupRegisterStep3Route());

      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound());
    }
  }
}
