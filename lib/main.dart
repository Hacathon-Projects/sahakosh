import 'package:flutter/material.dart';
import 'package:sahakosh/core/chat_ui/chatlistscreen.dart';
import 'package:sahakosh/core/profile_ui/investor_profile.dart';
import 'package:sahakosh/core/routes/route.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      home: ChatListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
