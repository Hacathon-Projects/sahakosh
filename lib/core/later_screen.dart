import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/widgets/drawer.dart';

class LaterScreen extends StatelessWidget {
  const LaterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text("Investment Portfolio"),
          elevation: 0,
          actions: [
            IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteConstant.landingScreen,
                      (Route<dynamic> route) => false);
                }),
            IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () => Navigator.of(context)
                    .pushNamed(RouteConstant.investorNotificationPage)),
          ],
        ),
        body: const Center(
          child: Text('Feature will be added soon'),
        ));
  }
}
