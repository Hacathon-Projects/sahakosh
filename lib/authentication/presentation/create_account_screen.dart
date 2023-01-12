import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/primary_button.dart';
import 'package:sahakosh/widgets/gradient.dart';
import 'package:sahakosh/widgets/secondary_button.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacementNamed(RouteConstant.landingScreen);
        return true;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: ClipPath(
                        clipper: WaveClipperTwo(flip: true),
                        child: Container(
                          height: 350,
                          decoration: const BoxDecoration(gradient: gradient),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 80),
                          child: Column(
                            children: [
                              const Text(
                                "Be a part of\nChange",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              Image.asset(
                                'assets/images/logo.png',
                                height: 80,
                                width: 80,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      PrimaryButton(
                          text: 'Register as Investor',
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed(
                                  RouteConstant.investorRegisterStep1Route)),
                      const SizedBox(height: 30),
                      PrimaryButton(
                          text: 'Register as Startup',
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed(
                                  RouteConstant.startupRegisterStep1Route)),
                      const SizedBox(
                        height: 70,
                      ),
                      SecondaryButton(
                        text: "Already have account? Login",
                        onTap: () => Navigator.of(context)
                            .pushReplacementNamed(RouteConstant.landingScreen),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
