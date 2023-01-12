import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sahakosh/core/chat_ui/chatlistscreen.dart';
import 'package:sahakosh/core/profile_ui/investor_profile.dart';
=======
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
>>>>>>> c481b90daded50e48701be47fa017834bf6629a0
import 'package:sahakosh/core/routes/route.dart';

import 'core/routes/routes_constant.dart';

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
      onGenerateRoute: Routes.generateRoute,
<<<<<<< HEAD
      home: ChatListScreen(),
      debugShowCheckedModeBanner: false,
=======
      initialRoute: RouteConstant.landingScreen,
>>>>>>> c481b90daded50e48701be47fa017834bf6629a0
    );
  }
}
