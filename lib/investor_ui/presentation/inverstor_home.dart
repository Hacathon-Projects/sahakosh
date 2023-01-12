import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahakosh/investor_ui/domain/investor_dummy.dart';
import 'package:sahakosh/widgets/investor_ui/startup_card.dart';

class InvestorHomeScreen extends StatelessWidget {
  const InvestorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                          child: Image.network(
                              'https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Sahakosh Investors",
                      )
                    ],
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Technology Startups',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    TextButton(onPressed: () {}, child: Text('View All'))
                  ],
                ),
                SizedBox(
                    height: 230,
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: InvestorDummy.length,
                        separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                        itemBuilder: (context, index) => StartupCard(
                              image: InvestorDummy[index].image,
                              category: InvestorDummy[index].category,
                              money: InvestorDummy[index].target,
                              operating_yrs: InvestorDummy[index].operating_yrs,
                              title: InvestorDummy[index].name,
                            ))),
                Divider(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Startups',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    TextButton(onPressed: () {}, child: Text('View All'))
                  ],
                ),
                SizedBox(
                    height: 230,
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: InvestorDummy.length,
                        separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                        itemBuilder: (context, index) => StartupCard(
                              image: InvestorDummy[index].image,
                              category: InvestorDummy[index].category,
                              money: InvestorDummy[index].target,
                              operating_yrs: InvestorDummy[index].operating_yrs,
                              title: InvestorDummy[index].name,
                            ))),
                Divider(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Startups',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    TextButton(onPressed: () {}, child: Text('View All'))
                  ],
                ),
                SizedBox(
                    height: 230,
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: InvestorDummy.length,
                        separatorBuilder: (context, index) => SizedBox(
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
