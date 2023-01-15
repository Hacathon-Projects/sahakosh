import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartupDetails extends StatelessWidget {
  final String owner;
  const StartupDetails({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Startup Owners",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              owner,
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).primaryColor),
            )
          ],
        ),
        const Divider(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Email",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "aayushgelal@gmail.com",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).primaryColor),
            )
          ],
        ),
        const Divider(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Status",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "Raising Funding",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).primaryColor),
            ),
          ],
        ),
        const Divider(
          height: 20,
        )
      ],
    );
  }
}
