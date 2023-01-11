import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/button.dart';

class StartupRegisterStep2Route extends StatefulWidget {
  const StartupRegisterStep2Route({super.key});

  @override
  State<StartupRegisterStep2Route> createState() =>
      _StartupRegisterStep2RouteState();
}

class _StartupRegisterStep2RouteState extends State<StartupRegisterStep2Route> {
  final TextEditingController _companyRegistrationNumberController =
      TextEditingController();
  final TextEditingController _companyPANController = TextEditingController();
  final TextEditingController _companyOperationYearsController =
      TextEditingController();
  final TextEditingController _companyFoundersNameController =
      TextEditingController();
  final TextEditingController _companyCityController = TextEditingController();
  final TextEditingController _companyProvinceController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Company Details',
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(flex: 2),
              MyTextField(
                  controller: _companyRegistrationNumberController,
                  hintText: 'Registration Number'),
              const Spacer(flex: 1),
              MyTextField(
                controller: _companyPANController,
                hintText: 'PAN Number',
              ),
              const Spacer(flex: 1),
              MyTextField(
                  controller: _companyOperationYearsController,
                  hintText: 'Years of Operation'),
              const Spacer(flex: 1),
              MyTextField(
                controller: _companyFoundersNameController,
                hintText: 'Name of Founders',
              ),
              const Spacer(flex: 1),
              MyTextField(
                controller: _companyCityController,
                hintText: 'City',
              ),
              const Spacer(flex: 1),
              MyTextField(
                controller: _companyProvinceController,
                hintText: 'Province',
              ),
              const Spacer(flex: 2),
              MyButton(
                  text: 'Next',
                  onTap: () => Navigator.of(context)
                      .pushNamed(RouteConstant.startupRegisterStep3Route)),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
