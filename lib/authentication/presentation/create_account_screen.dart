import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/button.dart';

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
                          text: 'Register as Investor',
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed(
                                  RouteConstant.investorRegisterStep1Route)),
                      const SizedBox(height: 30),
                      MyButton(
                          text: 'Register as Startup',
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed(
                                  RouteConstant.startupRegisterStep1Route)),
                      const SizedBox(
                        height: 70,
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context)
                            .pushReplacementNamed(RouteConstant.landingScreen),
                        child: const Text(
                          "Already have account? Login",
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
          )),
    );
  }
}
