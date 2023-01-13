import 'package:flutter/material.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';
import 'package:sahakosh/widgets/primary_button.dart';

class ProposalPage extends StatelessWidget {
  StartupModel startup;
  ProposalPage({super.key, required this.startup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text('Send Proposal'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              const Text("Investor Details",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  )),
                              const SizedBox(height: 10),
                              Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      const TextSpan(
                                          text: 'Name : ', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                                      TextSpan(text: startup.personalDetails!.name, style: const TextStyle(fontSize: 16, color: Colors.black)),
                                    ])),
                                    const SizedBox(height: 5),
                                    RichText(
                                        text: TextSpan(children: [
                                      const TextSpan(
                                          text: 'Category : ', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                                      TextSpan(text: startup.investmentCategory, style: const TextStyle(fontSize: 16, color: Colors.black)),
                                    ])),
                                    const SizedBox(height: 5),
                                    RichText(
                                        text: TextSpan(children: [
                                      const TextSpan(
                                          text: 'Profession : ', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                                      TextSpan(text: startup.profession, style: const TextStyle(fontSize: 16, color: Colors.black)),
                                    ])),
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
                                      width: MediaQuery.of(context).size.width / 1.12,
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
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Proposal",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        )),
                    const SizedBox(height: 10),
                    TextFormField(
                        maxLines: 7,
                        maxLength: 500,
                        decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Write your proposal')),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(child: PrimaryButton(text: 'Send Proposal', onTap: () {})),
            ]),
          ),
        ));
  }
}
