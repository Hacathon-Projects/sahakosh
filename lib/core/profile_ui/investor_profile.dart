import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahakosh/widgets/circle_avatar_border.dart';
import 'package:sahakosh/widgets/my_profile_tile.dart';

class MyProfileInvestor extends StatefulWidget {
  const MyProfileInvestor({super.key});

  @override
  State<MyProfileInvestor> createState() => _MyProfileInvestorState();
}

class _MyProfileInvestorState extends State<MyProfileInvestor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 250,
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black87,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 50),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    ),
                    child: ListView(physics: BouncingScrollPhysics(), children: [
                      MyProileTile(
                        title: "Mobile",
                        icon: Icons.phone_android,
                        onTap: () {},
                        data: "9861487591",
                      ),
                      MyProileTile(
                        title: "Address",
                        icon: Icons.location_pin,
                        onTap: () {},
                        data: "Gelal Gaun, Changunarayan",
                      ),
                      MyProileTile(
                        title: "Payment Option",
                        icon: CupertinoIcons.creditcard_fill,
                        onTap: () {},
                        data: "Esewa 9861****",
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
                  ),
                )
              ],
            ),
            Positioned(
                top: 70,
                left: 20,
                child: SizedBox(
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
                                    child: const Text(
                                      'Aayush Gelal',
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, letterSpacing: 1, fontSize: 21),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  )
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
                            "The new age business tycoon with over 50 business and founder of Sahakosh",
                            style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.5,
                              fontSize: 14,
                            ),
                          ))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
