import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sahakosh/widgets/simple_button.dart';
import 'package:sahakosh/widgets/primary_button.dart';
import 'package:image_picker/image_picker.dart';

class StartupRegisterStep3Route extends StatefulWidget {
  const StartupRegisterStep3Route({super.key});

  @override
  State<StartupRegisterStep3Route> createState() =>
      _StartupRegisterStep3RouteState();
}

class _StartupRegisterStep3RouteState extends State<StartupRegisterStep3Route> {
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
              'Upload Documents',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(flex: 2),
            MySimpleButton(
              text: 'Upload registration document',
              ontap: () {
                // TODO: Upload registration document function
              },
            ),
            const SizedBox(height: 30),
            MySimpleButton(
                text: 'Upload VAT document',
                ontap: () {
                  // TODO: Upload VAT document function
                }),
            const Spacer(flex: 2),
            PrimaryButton(
                text: 'Finish',
                onTap: () {
                  // TODO : State after startup registration complete
                }),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
