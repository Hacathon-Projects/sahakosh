import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahakosh/investor_ui/presentation/detail_invest.dart';
import 'package:sahakosh/widgets/investor_ui/investor_button.dart';

class StartupCard extends StatelessWidget {
  var title;
  final String category;
  final String operating_yrs;
  final String image;
  final int money;

  StartupCard(
      {super.key,
      required this.title,
      required this.category,
      required this.image,
      required this.money,
      required this.operating_yrs});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [
              Colors.blue.shade900.withOpacity(0.5),
              Theme.of(context).backgroundColor.withOpacity(0.5)
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Looking For",
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                  Text(
                    "Rs ${money.toString()}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withAlpha(700),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                  Column(
                    children: [
                      Text(
                        'Operating Years',
                        style: TextStyle(color: Colors.white70, fontSize: 8),
                      ),
                      Text(
                        operating_yrs,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.green,
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
