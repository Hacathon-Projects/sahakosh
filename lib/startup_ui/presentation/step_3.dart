import 'package:flutter/material.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/button.dart';

class StartupUIStep3Screen extends StatefulWidget {
  const StartupUIStep3Screen({super.key});

  @override
  State<StartupUIStep3Screen> createState() => _StartupUIStep3ScreenState();
}

class _StartupUIStep3ScreenState extends State<StartupUIStep3Screen> {
  final TextEditingController _aboutYourselfController =
      TextEditingController();
  final TextEditingController _historyOfYourInvestmentController =
      TextEditingController();
  final TextEditingController _uploadCitizenshipController =
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
              'Now, one more step',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(flex: 2),
            MyTextField(
                controller: _aboutYourselfController,
                hintText: 'About Yourself'),
            const SizedBox(height: 30),
            MyTextField(
                controller: _historyOfYourInvestmentController,
                hintText: 'History of your investment'),
            const SizedBox(height: 30),
            MyTextField(
                controller: _uploadCitizenshipController,
                hintText: 'Upload Citizeship/ License'),
            const Spacer(flex: 2),
            MyButton(text: 'Finish', onTap: () {}),
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
