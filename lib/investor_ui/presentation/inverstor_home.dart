import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/investor_ui/domain/investor_dummy.dart';
import 'package:sahakosh/widgets/investor_ui/startup_card.dart';

import 'detail_invest.dart';

class InvestorHomeScreen extends StatelessWidget {
  const InvestorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Sahakosh Startups"),
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
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Technology Startups",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
              SizedBox(
                  height: 210,
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: investorDummy1.length,
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 15,
                          ),
                      itemBuilder: (context, index) => StartupCard(
                            image: investorDummy1[index].image,
                            category: investorDummy1[index].category,
                            money: investorDummy1[index].target,
                            operating_yrs: investorDummy1[index].operating_yrs,
                            title: investorDummy1[index].name,
                          ))),
              const SizedBox(height: 15),
              const Divider(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Popular Startups",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
              SizedBox(
                  height: 210,
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: investorDummy2.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 15),
                      itemBuilder: (context, index) => StartupCard(
                            image: investorDummy2[index].image,
                            category: investorDummy2[index].category,
                            money: investorDummy2[index].target,
                            operating_yrs: investorDummy2[index].operating_yrs,
                            title: investorDummy2[index].name,
                          ))),
              const SizedBox(height: 15),
              const Divider(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("New Startups",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                  TextButton(onPressed: () {}, child: const Text('View All'))
                ],
              ),
              SizedBox(
                  height: 210,
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: investorDummy3.length,
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 15,
                          ),
                      itemBuilder: (context, index) => StartupCard(
                            image: investorDummy3[index].image,
                            category: investorDummy3[index].category,
                            money: investorDummy3[index].target,
                            operating_yrs: investorDummy3[index].operating_yrs,
                            title: investorDummy3[index].name,
                          ))),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
