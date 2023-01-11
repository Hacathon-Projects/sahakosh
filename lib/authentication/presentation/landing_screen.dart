import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/button.dart';

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
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/auth_bg.png'),
                  fit: BoxFit.fill,
                )),
                child: Stack(
                  children: <Widget>[
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
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    MyButton(
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
                    MyButton(
                        text: 'Login as Startup',
                        onTap: () => Navigator.of(context).pushReplacementNamed(
                            RouteConstant.startupLoginRoute)),
                    const SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pushReplacementNamed(
                          RouteConstant.createAccountScreen),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(143, 148, 251, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
