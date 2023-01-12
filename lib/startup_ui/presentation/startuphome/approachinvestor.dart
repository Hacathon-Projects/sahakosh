import 'package:flutter/material.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';

// ignore: must_be_immutable
class ApproachInvestor extends StatelessWidget {
  StartupModel startup;
  ApproachInvestor({super.key, required this.startup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text("Proposal"),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 0, backgroundColor: Colors.blue[700]),
                  onPressed: () {},
                  child: const Text('6 Tokens Available')),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: const [
                    Card(
                      elevation: 3,
                    ),
                    Text("Investor Details")
                  ],
                ))
          ],
        ));
  }
}
