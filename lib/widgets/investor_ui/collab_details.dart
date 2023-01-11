import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CollabDetails extends StatelessWidget {
  const CollabDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png'),
                    ),
                    Text(
                      'Elon Muslk',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('5%',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
          separatorBuilder: (context, index) => Divider(
                height: 10,
              ),
          itemCount: 4),
    );
  }
}
