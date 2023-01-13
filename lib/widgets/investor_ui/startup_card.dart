import 'package:flutter/material.dart';

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
      width: 280,
      child: Container(
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
              height: 35,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(7),
                  )),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
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
