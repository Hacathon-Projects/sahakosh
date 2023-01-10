import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/route.dart';

import 'authentication/presentation/landing_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      home: LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
