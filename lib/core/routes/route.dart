import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/screens/LoginScreen.dart';
import 'package:sahakosh/screens/RegisterScreen.dart';
import 'package:sahakosh/core/routes/404.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';

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
