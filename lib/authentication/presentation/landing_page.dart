import 'package:flutter/material.dart';
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
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Center(
                          child: Text(
                            "Be a part of\nChange",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
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
                        onTap: () {
                          // TODO: Implement login as Inverstors
                        }),
                    const SizedBox(height: 30),
                    MyButton(
                        text: 'Login as Startup',
                        onTap: () {
                          // TODO: Implement login as Startup
                        }),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromRGBO(143, 148, 251, 1),
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
