import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/text_field.dart';
import 'package:sahakosh/widgets/primary_button.dart';

class InvestorRegisterStep1Route extends StatefulWidget {
  const InvestorRegisterStep1Route({super.key});

  @override
  State<InvestorRegisterStep1Route> createState() =>
      _InvestorRegisterStep1RouteState();
}

class _InvestorRegisterStep1RouteState
    extends State<InvestorRegisterStep1Route> {
  final TextEditingController _investorNameController = TextEditingController();
  final TextEditingController _investorEmailController =
      TextEditingController();
  final TextEditingController _investorContactController =
      TextEditingController();
  final TextEditingController _investorWebsiteController =
      TextEditingController();
  final TextEditingController _investorFundCapacityController =
      TextEditingController();
  final TextEditingController _investorBusinessSectorController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context)
            .pushReplacementNamed(RouteConstant.createAccountScreen);
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  controller: _investorNameController,
                  hintText: 'Legal Name',
                ),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _investorEmailController,
                  hintText: 'Email',
                ),
                const Spacer(flex: 1),
                MyTextField(
                    controller: _investorContactController,
                    hintText: 'Contact Number'),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _investorWebsiteController,
                  hintText: 'Website / Social Media',
                ),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _investorBusinessSectorController,
                  hintText: 'Interested Business Sector',
                ),
                const Spacer(flex: 1),
                MyTextField(
                  controller: _investorFundCapacityController,
                  hintText: 'Amount you can invest',
                ),
                const Spacer(flex: 2),
                PrimaryButton(
                    text: 'Next',
                    onTap: () => Navigator.of(context)
                        .pushNamed(RouteConstant.investorRegisterStep2Route)),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
