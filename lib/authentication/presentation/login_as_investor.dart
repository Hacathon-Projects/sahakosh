import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/button.dart';

class LoginAsInvestorScreen extends StatefulWidget {
  const LoginAsInvestorScreen({super.key});

  @override
  State<LoginAsInvestorScreen> createState() => _LoginAsInvestorScreenState();
}

class _LoginAsInvestorScreenState extends State<LoginAsInvestorScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
              'Let’s Explore Potential Unicorns',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(flex: 1),
            MyTextField(controller: _emailController, hintText: 'Email'),
            const SizedBox(height: 30),
            MyTextField(controller: _passwordController, hintText: 'Password'),
            const Spacer(flex: 1),
            MyButton(text: 'Let\'s Go', onTap: () {}),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Create Account",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(143, 148, 251, 1),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
