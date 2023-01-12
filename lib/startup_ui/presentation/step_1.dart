import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/primary_button.dart';

class StartupRegisterStep1Route extends StatefulWidget {
  const StartupRegisterStep1Route({super.key});

  @override
  State<StartupRegisterStep1Route> createState() =>
      _StartupRegisterStep1RouteState();
}

class _StartupRegisterStep1RouteState extends State<StartupRegisterStep1Route> {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _companyEmailController = TextEditingController();
  final TextEditingController _companyContactController =
      TextEditingController();
  final TextEditingController _companyWebsiteController =
      TextEditingController();
  final TextEditingController _companyDescriptionController =
      TextEditingController();
  final TextEditingController _companyBusinessSectorController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacementNamed(RouteConstant.landingScreen);
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
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
                MyTextField(
                    controller: _companyNameController,
                    hintText: 'Name of company'),
                const Spacer(flex: 1),
                MyTextField(
                    controller: _companyEmailController,
                    hintText: 'Business email'),
                const Spacer(flex: 1),
                MyTextField(
                    controller: _companyContactController,
                    hintText: 'Business contact'),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _companyWebsiteController,
                  hintText: 'Website',
                ),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _companyBusinessSectorController,
                  hintText: 'Business Sector',
                ),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _companyDescriptionController,
                  hintText: 'Description',
                ),
                const Spacer(flex: 2),
                PrimaryButton(
                    text: 'Next',
                    onTap: () => Navigator.of(context)
                        .pushNamed(RouteConstant.startupRegisterStep2Route)),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
