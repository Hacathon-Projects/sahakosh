import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sahakosh/core/routes/route.dart';
import 'package:sahakosh/models/startup.dart';
import 'package:sahakosh/startup_ui/presentation/startuphome/startuphome.dart';

import 'core/routes/routes_constant.dart';
import 'startup_ui/presentation/proposal/proposal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock in portrait mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Make status bar transparent throughout the app
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
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
        primaryColor: Colors.blue[800],
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      // onGenerateRoute: Routes.generateRoute,
      // initialRoute: RouteConstant.landingScreen,
      home: const StartupHome(),
    );
  }
}
