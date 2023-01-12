import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/route.dart';
import 'package:sahakosh/startup_ui/presentation/startuphome/startuphome.dart';

import 'core/routes/routes_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteConstant.landingScreen,
    );
  }
}
