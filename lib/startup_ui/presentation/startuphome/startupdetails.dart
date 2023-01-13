import 'package:flutter/material.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';
import 'package:sahakosh/startup_ui/presentation/proposal/proposal.dart';

class StartupDetails extends StatelessWidget {
  final StartupModel startup;
  const StartupDetails({super.key, required this.startup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(startup.personalDetails!.name ?? ""),
        elevation: 0,
      ),
      floatingActionButton: SizedBox(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProposalPage(startup: startup);
            })),
            child: Container(
              height: 55,
              width: 267,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[800],
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Approach Investor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Align(
            alignment: Alignment.center,
            child: Stack(children: [
              Column(children: [
                const SizedBox(height: 5),
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
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Text("About Investor",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    )),
                                const SizedBox(height: 5),
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
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text("Area of Interests",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    )),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                        width: 135,
                                        height: 50,
                                        child: TextButton(
                                            onPressed: () {}, child: Text(startup.investmentCategory!, style: const TextStyle(color: Colors.black)))),
                                    const SizedBox(width: 10),
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                        width: 130,
                                        height: 50,
                                        child: TextButton(
                                            onPressed: () {}, child: const Text("IoT", style: TextStyle(color: Colors.black))))
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                        width: 135,
                                        height: 50,
                                        child: TextButton(onPressed: () {}, child: const Text("FinTech", style: TextStyle(color: Colors.black)))),
                                    const SizedBox(width: 10),
                                    Container(
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(255, 231, 231, 231), borderRadius: BorderRadius.all(Radius.circular(11))),
                                        width: 130,
                                        height: 50,
                                        child: TextButton(onPressed: () {}, child: const Text("Science", style: TextStyle(color: Colors.black))))
                                  ],
                                ),
                                const SizedBox(height: 20),
                                //More Details ====================================
                                const Text("More Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    )),
                                moreDetails(context),
                                const SizedBox(height: 24),

                                //Past Investments =================================
                                const Text("Past Investments",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    )),
                                const SizedBox(height: 10),
                                pastInvestment(context),
                                const SizedBox(height: 10),
                                pastInvestment(context),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ])
            ]),
          ),
        ),
      ),
    );
  }

  Stack pastInvestment(BuildContext context) {
    return Stack(children: [
      SizedBox(height: 160, width: MediaQuery.of(context).size.width / 1.21, child: Card(color: Colors.grey[200])),
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
<<<<<<< HEAD
                  image: DecorationImage(
                      image: NetworkImage(startup.personalDetails!.photo ?? ""),
                      fit: BoxFit.cover),
=======
                  image: DecorationImage(image: NetworkImage(startup.personalDetails!.photo ?? ""), fit: BoxFit.fill),
>>>>>>> 972b441cc20e40bc35d0962f4913d8224b10f4f6
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
    ]);
  }

  Widget moreDetails(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
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
