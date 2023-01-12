import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/primary_button.dart';
import 'package:sahakosh/widgets/gradient.dart';
import 'package:sahakosh/widgets/secondary_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                                  fontSize: 28,
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
                        text: 'Login as Investor',
                        onTap: () async {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: "rabin@gmail.com",
                                  password: "rabin_11");
                          // Navigator.of(context).pushReplacementNamed(
                          //     RouteConstant.investorLoginRoute);
                        }),
                    const SizedBox(height: 30),
                    PrimaryButton(
                        text: 'Login as Startup',
                        onTap: () => Navigator.of(context).pushReplacementNamed(
                            RouteConstant.startupLoginRoute)),
                    const SizedBox(
                      height: 70,
                    ),
                    SecondaryButton(
                      text: 'Create Account',
                      onTap: () => Navigator.of(context).pushReplacementNamed(
                          RouteConstant.createAccountScreen),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
