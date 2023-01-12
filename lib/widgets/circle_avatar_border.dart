import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircleAvatarBorder extends StatelessWidget {
  const CircleAvatarBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 42,
      backgroundColor: Colors.blueGrey,
      child: CircleAvatar(
          radius: 39,
          backgroundImage: CachedNetworkImageProvider(
              'https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png')),
    );
  }
}
