import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CollabDetails extends StatelessWidget {
  const CollabDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Elon Musk',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text('5%',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
        separatorBuilder: (context, index) => const Divider(
              height: 10,
            ),
        itemCount: 4);
  }
}
