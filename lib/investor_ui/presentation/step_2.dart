import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sahakosh/widgets/simple_button.dart';
import 'package:sahakosh/widgets/button.dart';
import 'package:image_picker/image_picker.dart';

class InvestorRegisterStep2Route extends StatefulWidget {
  const InvestorRegisterStep2Route({super.key});

  @override
  State<InvestorRegisterStep2Route> createState() =>
      _InvestorRegisterStep2RouteState();
}

class _InvestorRegisterStep2RouteState
    extends State<InvestorRegisterStep2Route> {
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
              text: 'Upload Citizenship / Passport / Driving License',
              ontap: () {
                // TODO: Upload registration document function
              },
            ),
            const SizedBox(height: 30),
            MySimpleButton(
                text: 'Upload PAN document',
                ontap: () {
                  // TODO: Upload VAT document function
                }),
            const Spacer(flex: 2),
            MyButton(
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
