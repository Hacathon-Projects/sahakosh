import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/circle_avatar_border.dart';
import 'package:sahakosh/widgets/my_profile_tile.dart';

class InvestorProfileScreen extends StatefulWidget {
  const InvestorProfileScreen({super.key});

  @override
  State<InvestorProfileScreen> createState() => _InvestorProfileScreenState();
}

class _InvestorProfileScreenState extends State<InvestorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Profile"),
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(RouteConstant.landingScreen, (Route<dynamic> route) => false);
              }),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () => Navigator.of(context).pushNamed(RouteConstant.startupNotificationPage)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatarBorder(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: const Text('Subarna Poudel',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, letterSpacing: 1, fontSize: 21)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.star, color: Colors.amberAccent)
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.edit),
                      )
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      width: 400,
                      child: const Text(
                        "Looking for the legit dreamers to pursue it.",
                        style: TextStyle(
                          color: Colors.black87,
                          letterSpacing: 1.5,
                          fontSize: 14,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              ),
              child: ListView(physics: const BouncingScrollPhysics(), shrinkWrap: true, children: [
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
                  data: "Bhakhatapur, Kathmandu",
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
