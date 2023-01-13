import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/startup_ui/application/startup_service.dart';
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';

import 'startupdetails.dart';

class StartupHomeScreen extends StatelessWidget {
  const StartupHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Sahakosh Investors"),
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
                  .pushNamed(RouteConstant.startupNotificationPage)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 13),
              // ================ top rated ====================
              const Text("  Top Rated",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),

              SizedBox(
                height: 130,
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
                                    onTap: () async {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return StartupDetails(
                                            startup: items[index]);
                                      }));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 127,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          image: DecorationImage(
                                              image: NetworkImage(items[index]
                                                      .personalDetails!
                                                      .photo ??
                                                  ""),
                                              fit: BoxFit.cover),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(20)),
                                          child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue[700],
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20)),
                                                  ),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 12.0,
                                                            vertical: 3),
                                                    child: Text("4.8",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                "robotobold",
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
              const Divider(),
              const SizedBox(height: 8),

              // ================= Recommended =================
              const Text("  Recommended",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),

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
                                      onTap: () async {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return StartupDetails(
                                              startup: items[index]);
                                        }));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 108,
                                              width: 127,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  image: DecorationImage(
                                                      image: NetworkImage(items[
                                                                  index]
                                                              .personalDetails!
                                                              .photo ??
                                                          ""),
                                                      fit: BoxFit.cover)),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container()),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Row(
                                              children: [
                                                const SizedBox(width: 8),
                                                Column(
                                                  children: [
                                                    const Text(
                                                        "Invested Recently",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    Text(
                                                      items[index]
                                                              .personalDetails!
                                                              .name ??
                                                          "",
                                                      style: const TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    )
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
              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Startups",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.sort,
                      color: Colors.blue[900],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: FutureBuilder(
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
                                onTap: () async {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return StartupDetails(
                                        startup: items[index]);
                                  }));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Card(
                                    color: Colors.grey[200],
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 5, 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(width: 8),
                                              Container(
                                                height: 150,
                                                width: 145,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  image: DecorationImage(
                                                      image: NetworkImage(items[
                                                                  index]
                                                              .personalDetails!
                                                              .photo ??
                                                          ""),
                                                      fit: BoxFit.fill),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container()),
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 3),
                                                  Text(
                                                      items[index]
                                                              .personalDetails!
                                                              .name ??
                                                          "",
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black87,
                                                      )),
                                                  Text(
                                                    items[index]
                                                            .personalDetails!
                                                            .location ??
                                                        "",
                                                    style: const TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 3),
                                                  RichText(
                                                      text: TextSpan(children: [
                                                    const TextSpan(
                                                        text: 'Category : ',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    TextSpan(
                                                        text: items[index]
                                                                .investmentCategory ??
                                                            "",
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.black)),
                                                  ])),
                                                  RichText(
                                                      text: TextSpan(children: [
                                                    const TextSpan(
                                                        text: 'Asked Price : ',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    TextSpan(
                                                        text: items[index]
                                                            .totalBudget,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.black)),
                                                  ])),
                                                  SizedBox(
                                                    width: 150,
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                      const TextSpan(
                                                          text:
                                                              'Description : ',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      TextSpan(
                                                          text:
                                                              '${items[index].bio!.substring(0, 50)}...',
                                                          style: const TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              color: Colors
                                                                  .black)),
                                                    ])),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    '                        More Details',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.blue[800]),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
