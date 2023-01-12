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
                  padding: EdgeInsets.all(8),
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(30)),
                      color: Colors.blue),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    child:
                        ListView(physics: BouncingScrollPhysics(), children: [
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
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
                          CircleAvatarBorder(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      'Aayush Gelal',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                          fontSize: 21),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Followers",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                          fontSize: 14)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Following",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                          fontSize: 14))
                                ],
                              ),
                            ],
                          ),
                          FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 80, 79, 79),
                            onPressed: () {},
                            child: Icon(Icons.edit),
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 300,
                          child: Text(
                            "The new age business tycoon with over 50 business and founder of Sahakosh",
                            style: TextStyle(
                              color: Color.fromARGB(218, 255, 255, 255),
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
