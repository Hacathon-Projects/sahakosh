import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/route.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: RouteConstant.landingScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}
