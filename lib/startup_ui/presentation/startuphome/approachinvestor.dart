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
                child: Card(
                  color: Colors.grey[200],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 18, 12, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Investors Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 15),
                        Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "${startup.personalDetails!.name}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  "",
                                  style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w700, decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 5),
                                child: const Text(
                                  'Profit Per. %',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.only(right: 5),
                                child: const Text(
                                  "dasd%",
                                  style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700, decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                        ]),
                        const SizedBox(height: 25),
                        Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'Investment',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text(
                                  'रु ',
                                  style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w700, decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: const Text(
                                    'Current Profit',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(right: 5),
                                child: const Text(
                                  "dasdas",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700, decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
