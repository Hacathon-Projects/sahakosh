import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProileTile extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final String title;
  final String data;

  const MyProileTile(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.title,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () => onTap,
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black.withOpacity(0.06),
          child: Icon(
            icon,
            size: 24,
            color: Colors.black54,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(data),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
      ),
    );
  }
}
