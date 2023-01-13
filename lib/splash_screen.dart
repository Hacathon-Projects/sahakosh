import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () async {
      Navigator.of(context).pushReplacementNamed(RouteConstant.landingScreen);
    });
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 128,
          width: 128,
        ),
      ),
    );
  }
}
