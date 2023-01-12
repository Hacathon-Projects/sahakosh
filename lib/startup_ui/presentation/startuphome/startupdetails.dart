import 'package:flutter/material.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';
import 'package:sahakosh/startup_ui/presentation/proposal/proposal.dart';

class StartupDetails extends StatelessWidget {
  StartupModel startup;
  StartupDetails({super.key, required this.startup});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProposalPage(startup: startup);
                  }));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
                child: Row(mainAxisSize: MainAxisSize.min, children: const [Text('Approach Investor'), SizedBox(width: 10), Icon(Icons.schedule)])),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Align(
              alignment: Alignment.center,
              child: Stack(children: [
                Column(children: [
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                icon: const Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            const SizedBox(width: 5),
                            Text(startup.personalDetails!.name ?? "", overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 22)),
                          ],
                        ),
                      ),
                      const Icon(Icons.mail),
                    ]),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(image: NetworkImage(startup.personalDetails!.photo ?? ""), fit: BoxFit.cover),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(),
                    ),
                  ),
                  SizedBox(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    const Text("About Investor ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width / 1.2,
                                      child: Text(startup.bio ?? "", style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            //Area of Interest =========================================================
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    const Text("Area of Interests ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Container(
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                            width: 135,
                                            height: 50,
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Text(startup.investmentCategory!, style: const TextStyle(color: Colors.black)))),
                                        const SizedBox(width: 20),
                                        Container(
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                            width: 130,
                                            height: 50,
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Text(startup.investmentCategory!, style: const TextStyle(color: Colors.black))))
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    Row(
                                      children: [
                                        Container(
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                            width: 135,
                                            height: 50,
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Text(startup.investmentCategory!, style: const TextStyle(color: Colors.black)))),
                                        const SizedBox(width: 20),
                                        Container(
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                            width: 130,
                                            height: 50,
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Text(startup.investmentCategory!, style: const TextStyle(color: Colors.black))))
                                      ],
                                    ),
                                    const SizedBox(height: 24),
                                    //More Details ====================================
                                    const Text("More Details ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                                    moreDetails(context),
                                    const SizedBox(height: 24),

                                    //Past Investments =================================
                                    const Text("Past Investments", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                                    const SizedBox(height: 24),

                                    Stack(children: [
                                      SizedBox(
                                          height: 160, width: MediaQuery.of(context).size.width / 1.15, child: const Card(color: Colors.white60)),
                                      Column(
                                        children: [
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              const SizedBox(width: 15),
                                              Container(
                                                height: 120,
                                                width: 126,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  image: DecorationImage(image: NetworkImage(startup.personalDetails!.photo ?? ""), fit: BoxFit.fill),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  child: Align(alignment: Alignment.bottomRight, child: Container()),
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(startup.personalDetails!.name ?? "",
                                                      overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 18, fontFamily: "latobold")),
                                                  Text(startup.personalDetails!.location ?? ""),
                                                  Text(startup.investmentCategory ?? ""),
                                                  Text("Rs. ${startup.totalBudget}"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ])
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget moreDetails(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            child: Text("In hand Cash: Rs ${startup.totalBudget}", style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16))),
        SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            child: Text("Address: ${startup.personalDetails!.location}", style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16))),
        SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            child: Text("Recently Invested:  ${startup.totalBudget}", style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16))),
        SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            child: Text("Rating: ${startup.rating}", style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)))
      ],
    );
  }
}
