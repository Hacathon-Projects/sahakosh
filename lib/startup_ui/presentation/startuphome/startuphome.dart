import 'package:flutter/material.dart';
import 'package:sahakosh/startup_ui/application/startup_service.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';

class StartupHome extends StatelessWidget {
  const StartupHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: const Drawer(),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   title: const Text("Sahakosh Investors", style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: "latobold")),
        //   leading: Row(
        //     children: [
        //       const SizedBox(width: 10),
        //       SizedBox(
        //         height: 50,
        //         width: 50,
        //         child: InkWell(
        //           onTap: () {},
        //           child: Image.asset('assets/logo.png', width: 50, height: 50, fit: BoxFit.cover),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset('assets/logo.png', width: 100, height: 100, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Sahakosh Investors", style: TextStyle(fontSize: 24))
                    ],
                  ),
                ]),

                const SizedBox(height: 15),
                // ================ top rated ====================
                const Text("  Top Rated", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: "latobold")),
                const SizedBox(height: 17),

                SizedBox(
                  height: 108,
                  child: FutureBuilder(
                      future: StartupService.ReadJsonData(),
                      builder: (context, data) {
                        if (data.hasError) {
                          return Center(child: Text("${data.error}"));
                        } else if (data.hasData) {
                          var items = data.data as List<StartupModel>;
                          return ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              // ignore: unnecessary_null_comparison
                              itemCount: items == null ? 0 : items.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: GestureDetector(
                                      // TODO SEE DETAILS ABOUT STARTUPS
                                      onTap: () async {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 108,
                                          width: 127,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.0),
                                            image: DecorationImage(image: NetworkImage(items[index].personalDetails!.photo ?? ""), fit: BoxFit.cover),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                            child: Align(
                                                alignment: Alignment.bottomRight,
                                                child: Container(
                                                    color: Colors.blue,
                                                    child: const Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 3),
                                                      child: Text("4.8",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold,
                                                              fontFamily: "robotobold",
                                                              fontSize: 13)),
                                                    ))),
                                          ),
                                        ),
                                      )),
                                );
                              });
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),

                // ================= Recommended =================
                const SizedBox(height: 28),

                const Text("  Recommended", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, fontFamily: "latobold")),
                const SizedBox(height: 18),

                SizedBox(
                  height: 170,
                  child: FutureBuilder(
                      future: StartupService.ReadJsonData(),
                      builder: (context, data) {
                        if (data.hasError) {
                          return Center(child: Text("${data.error}"));
                        } else if (data.hasData) {
                          var items = data.data as List<StartupModel>;
                          return ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              // ignore: unnecessary_null_comparison
                              itemCount: items == null ? 0 : items.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: SingleChildScrollView(
                                    child: GestureDetector(
                                        // TODO SEE DETAILS ABOUT STARTUPS
                                        onTap: () async {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 108,
                                                width: 127,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20.0),
                                                    image: DecorationImage(
                                                        image: NetworkImage(items[index].personalDetails!.photo ?? ""), fit: BoxFit.cover)),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  child: Align(alignment: Alignment.bottomRight, child: Container()),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  const SizedBox(width: 8),
                                                  Column(
                                                    children: [
                                                      const Text("Invested Recently", style: TextStyle(fontFamily: "latobold")),
                                                      Text(items[index].personalDetails!.name ?? "")
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
                                  ),
                                );
                              });
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                const Divider(),

                FutureBuilder(
                    future: StartupService.ReadJsonData(),
                    builder: (context, data) {
                      if (data.hasError) {
                        return Center(child: Text("${data.error}"));
                      } else if (data.hasData) {
                        var items = data.data as List<StartupModel>;
                        return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            // ignore: unnecessary_null_comparison
                            itemCount: items == null ? 0 : items.length,
                            itemBuilder: (context, index) {
                              return SingleChildScrollView(
                                  child: GestureDetector(
                                // TODO SEE DETAILS ABOUT STARTUPS
                                onTap: () async {},
                                child: Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    Stack(children: [
                                      SizedBox(height: 185, width: MediaQuery.of(context).size.width, child: const Card(color: Colors.white60)),
                                      Column(
                                        children: [
                                          const SizedBox(height: 20),
                                          Row(
                                            children: [
                                              const SizedBox(width: 6),
                                              Container(
                                                height: 152,
                                                width: 156,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  image: DecorationImage(
                                                      image: NetworkImage(items[index].personalDetails!.photo ?? ""), fit: BoxFit.fill),
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
                                                  Text(items[index].personalDetails!.name ?? "",
                                                      style: const TextStyle(fontSize: 18, fontFamily: "latobold")),
                                                  Text(items[index].personalDetails!.location ?? ""),
                                                  Text(items[index].investmentCategory ?? ""),
                                                  Text(items[index].totalBudget ?? ""),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Image.asset(
                                          'assets/ibutton.png',
                                          width: 60,
                                          height: 60,
                                        ),
                                      ),
                                    ]),
                                    const SizedBox(height: 16),
                                  ],
                                ),
                              ));
                            });
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
