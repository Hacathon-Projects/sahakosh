import 'package:flutter/material.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/button.dart';

class StartupUIStep1Screen extends StatefulWidget {
  const StartupUIStep1Screen({super.key});

  @override
  State<StartupUIStep1Screen> createState() => _StartupUIStep1ScreenState();
}

class _StartupUIStep1ScreenState extends State<StartupUIStep1Screen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.asset(
              'assets/images/logo.png',
              height: 120,
              width: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              'Great, now let’s start',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(flex: 2),
            MyTextField(controller: _emailController, hintText: 'Full Name'),
            const SizedBox(height: 30),
            MyTextField(
                controller: _passwordController, hintText: 'Email Address'),
            const SizedBox(height: 30),
            MyTextField(
                controller: _nationalityController,
                hintText: 'Enter your nationality'),
            const Spacer(flex: 2),
            MyButton(text: 'Let\'s Go', onTap: () {}),
            const SizedBox(
              height: 70,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
