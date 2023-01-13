import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/investor_ui/domain/investor_dummy.dart';
import 'package:sahakosh/investor_ui/presentation/detail_invest.dart';
import 'package:sahakosh/widgets/investor_ui/startup_card.dart';

class InvestorHomeScreen extends StatelessWidget {
  const InvestorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Sahakosh StartUps"),
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pop(context);
              }),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () => Navigator.of(context).pushNamed(RouteConstant.startupNotificationPage)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Technology Startups',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
                SizedBox(
                    height: 230,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: InvestorDummy.length,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InvestDetail(item: InvestorDummy[index]))),
                              child: StartupCard(
                                image: InvestorDummy[index].image,
                                category: InvestorDummy[index].category,
                                money: InvestorDummy[index].target,
                                operating_yrs: InvestorDummy[index].operating_yrs,
                                title: InvestorDummy[index].name,
                              ),
                            ))),
                const Divider(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Startups',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
                SizedBox(
                    height: 230,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: InvestorDummy.length,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemBuilder: (context, index) => StartupCard(
                              image: InvestorDummy[index].image,
                              category: InvestorDummy[index].category,
                              money: InvestorDummy[index].target,
                              operating_yrs: InvestorDummy[index].operating_yrs,
                              title: InvestorDummy[index].name,
                            ))),
                const Divider(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Startups',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(onPressed: () {}, child: const Text('View All'))
                  ],
                ),
                SizedBox(
                    height: 230,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: InvestorDummy.length,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                              height: 10,
                            ),
                        itemBuilder: (context, index) => StartupCard(
                              image: InvestorDummy[index].image,
                              category: InvestorDummy[index].category,
                              money: InvestorDummy[index].target,
                              operating_yrs: InvestorDummy[index].operating_yrs,
                              title: InvestorDummy[index].name,
                            ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
