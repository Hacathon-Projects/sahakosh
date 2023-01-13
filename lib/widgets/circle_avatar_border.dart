import 'package:flutter/material.dart';

class CircleAvatarBorder extends StatelessWidget {
  const CircleAvatarBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 70,
      backgroundColor: Colors.blueGrey,
      child: CircleAvatar(
          radius: 67, backgroundImage: AssetImage('assets/images/subarna.png')),
    );
  }
}
