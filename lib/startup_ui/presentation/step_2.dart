import 'package:flutter/material.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/button.dart';

class StartupUIStep2Screen extends StatefulWidget {
  const StartupUIStep2Screen({super.key});

  @override
  State<StartupUIStep2Screen> createState() => _StartupUIStep2ScreenState();
}

class _StartupUIStep2ScreenState extends State<StartupUIStep2Screen> {
  final TextEditingController _yourAreaOfInterestController =
      TextEditingController();
  final TextEditingController _amountYouCanInvestController =
      TextEditingController();
  final TextEditingController _enterYourPhoneNumberController =
      TextEditingController();
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
              'Few more details',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(flex: 2),
            MyTextField(
                controller: _yourAreaOfInterestController,
                hintText: 'Your area of interest'),
            const SizedBox(height: 30),
            MyTextField(
                controller: _amountYouCanInvestController,
                hintText: 'Amount you can invest'),
            const SizedBox(height: 30),
            MyTextField(
                controller: _enterYourPhoneNumberController,
                hintText: 'Enter your phone number'),
            const Spacer(flex: 2),
            MyButton(text: 'Next', onTap: () {}),
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
