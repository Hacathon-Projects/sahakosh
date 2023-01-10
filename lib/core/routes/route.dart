import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/404.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';

import '../../authentication/login_as_investor.dart';
import '../../authentication/login_as_startup.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case RouteConstant.userLoginRoute:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteConstant.userRegisterRoute:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      default:
        return MaterialPageRoute(builder: (context) => PageNotFound());
    }
  }
}
