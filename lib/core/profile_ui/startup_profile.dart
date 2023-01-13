import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/circle_avatar_border.dart';
import 'package:sahakosh/widgets/my_profile_tile.dart';

class StartupProfileScreen extends StatefulWidget {
  const StartupProfileScreen({super.key});

  @override
  State<StartupProfileScreen> createState() => _StartupProfileScreenState();
}

class _StartupProfileScreenState extends State<StartupProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Profile"),
        elevation: 0,
        actions: [
          IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteConstant.landingScreen,
                    (Route<dynamic> route) => false);
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const CircleAvatarBorder(),
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Text("Subarna Poudel",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  )),
                              SizedBox(width: 10),
                              Text('4'),
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Text(
                      "The new age business tycoon with over 50 business and founder of Sahakosh",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    MyProileTile(
                      title: "Mobile",
                      icon: Icons.phone_android,
                      onTap: () {},
                      data: "98236504841",
                    ),
                    MyProileTile(
                      title: "Address",
                      icon: Icons.location_pin,
                      onTap: () {},
                      data: "Lokanthali, Kathmandu",
                    ),
                    MyProileTile(
                      title: "Payment Option",
                      icon: CupertinoIcons.creditcard_fill,
                      onTap: () {},
                      data: "Connect IPS 9861****",
                    ),
                    MyProileTile(
                      title: "Investment History",
                      icon: CupertinoIcons.square_list_fill,
                      onTap: () {},
                      data: "",
                    ),
                    MyProileTile(
                      title: "Forgot Password",
                      icon: CupertinoIcons.lock_fill,
                      onTap: () {},
                      data: "",
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
