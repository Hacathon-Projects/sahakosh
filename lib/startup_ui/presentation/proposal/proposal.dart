import 'package:flutter/material.dart';
import 'package:sahakosh/core/chat_ui/chatlistscreen.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';

class ProposalPage extends StatelessWidget {
  StartupModel startup;
  ProposalPage({super.key, required this.startup});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(children: [
            const SizedBox(width: 5),
            IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            const SizedBox(width: 15),
            const Text("Send Proposal", style: TextStyle(fontSize: 20, fontFamily: "latobold")),
            const SizedBox(width: 40),
          ]),
        ),
        const SizedBox(height: 5),
        Column(
          children: [
            SizedBox(
                height: 270,
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
                                  "Name : ${startup.personalDetails!.name}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("Category : ${startup.investmentCategory}",
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("Profession : ${startup.profession}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ]),
                        const SizedBox(height: 20),
                        Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                child: const Text('Investment', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              ),
                              const SizedBox(height: 4),
                              SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 1.1,
                                child: TextFormField(
                                  readOnly: true,
                                  initialValue: "Rs. ${startup.totalBudget}",
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Proposal", style: TextStyle(fontSize: 20, fontFamily: "latobold")),
              const SizedBox(height: 10),
              TextFormField(
                  maxLines: 7, maxLength: 500, decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Write your proposal')),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return ChatListScreen();
                  }));
                },
                child: const Text("Send Proposal"),
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
