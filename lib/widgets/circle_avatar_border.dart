import 'package:flutter/material.dart';

class CircleAvatarBorder extends StatelessWidget {
  final String image;
  const CircleAvatarBorder({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      backgroundColor: Colors.blueGrey,
      child: CircleAvatar(radius: 67, backgroundImage: AssetImage(image)),
    );
  }
}
