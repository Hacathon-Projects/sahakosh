import 'package:flutter/material.dart';
import 'package:sahakosh/authentication/presentation/create_account_screen.dart';
import 'package:sahakosh/authentication/presentation/landing_screen.dart';
import 'package:sahakosh/core/routes/404.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/home_ui/home_screen.dart';
import 'package:sahakosh/investor_ui/presentation/inverstor_home.dart';
// import 'package:sahakosh/investor_ui/presentation/investor_notification.dart';
import 'package:sahakosh/investor_ui/presentation/step_1.dart';
import 'package:sahakosh/investor_ui/presentation/step_2.dart';
import 'package:sahakosh/notification_ui/investor/presentation/investor_notification_page.dart';
import 'package:sahakosh/notification_ui/startup/presentation/startup_notification_page.dart';
import 'package:sahakosh/portfolio_ui/presentation/portfolio_screen.dart';
import 'package:sahakosh/startup_ui/presentation/startuphome/startuphome.dart';
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
      case RouteConstant.homeRoute:
        final args = arguments as bool;
        return MaterialPageRoute(
            builder: (context) => HomeScreen(
                  isStartup: args,
                ));

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

      // Investor home screen
      case RouteConstant.investorHomeScreen:
        return MaterialPageRoute(
            builder: (context) => const InvestorHomeScreen());
      case RouteConstant.investorNotificationPage:
        return MaterialPageRoute(
            builder: (context) => const InvestorNotificationPage());

      // Startup home screen
      case RouteConstant.startupHomeScreen:
        return MaterialPageRoute(
            builder: (context) => const StartupHomeScreen());
      case RouteConstant.startupNotificationPage:
        return MaterialPageRoute(
            builder: (context) => const StartupNotificationPage());

      // Portfolio
      case RouteConstant.portfolioManagementScreen:
        return MaterialPageRoute(
            builder: (context) => const PortfolioManagementScreen());

      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound());
    }
  }
}
