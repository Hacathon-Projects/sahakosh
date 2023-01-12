import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sahakosh/widgets/investor_ui/collab_details.dart';
import 'package:sahakosh/widgets/investor_ui/invest_tab.dart';
import 'package:sahakosh/widgets/investor_ui/investor_button.dart';
import 'package:sahakosh/widgets/investor_ui/startup_details.dart';

class InvestDetail extends StatefulWidget {
  const InvestDetail({super.key});

  @override
  State<InvestDetail> createState() => _InvestDetailState();
}

class _InvestDetailState extends State<InvestDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        height: 250,
        child: Image(
          image: NetworkImage(
              "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"),
          fit: BoxFit.cover,
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      Positioned(
          top: 230,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Geeks for Geeks',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Fintech",
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Target",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Rs 50000",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 40,
                    animation: true,
                    lineHeight: 18.0,
                    animationDuration: 1000,
                    percent: ((double.parse('10000') *
                            100 /
                            double.parse('100000')) /
                        100),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.only(bottom: 10, top: 5),
                  width: MediaQuery.of(context).size.width - 40,
                  child: TabBar(
                    indicatorColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.black38,
                    labelColor: Theme.of(context).primaryColor,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Avenir',
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Avenir',
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "Invest",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Files",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Angels",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "More",
                        ),
                      ),
                    ],
                    controller: _tabController,
                  ),
                ),
                Container(
                  height: 400,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      InvestTab(
                        description:
                            'Our aim is to build the fastest production electric cardshfma',
                        valuation: 400000,
                      ),
                      InvestTab(
                        description:
                            'Our aim is to build the fastest production electric cardshfma',
                        valuation: 400000,
                      ),
                      CollabDetails(),
                      StartupDetails()
                    ],
                  ),
                ),
                InvestorButton(
                  title: 'Invest',
                  height: 60,
                  textSize: 20,
                  width: 300,
                )
              ],
            ),
          ))
    ]));
  }
}
