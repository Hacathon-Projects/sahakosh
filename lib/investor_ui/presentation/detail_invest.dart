import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sahakosh/investor_ui/domain/investor_model.dart';
import 'package:sahakosh/widgets/investor_ui/collab_details.dart';
import 'package:sahakosh/widgets/investor_ui/invest_tab.dart';
import 'package:sahakosh/widgets/investor_ui/investor_button.dart';
import 'package:sahakosh/widgets/investor_ui/startup_details.dart';

class InvestDetail extends StatefulWidget {
  final InvestorModel item;
  const InvestDetail({super.key, required this.item});

  @override
  State<InvestDetail> createState() => _InvestDetailState();
}

class _InvestDetailState extends State<InvestDetail> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
          image: NetworkImage(widget.item.image),
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
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
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
                      widget.item.name,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.item.category,
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Target",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(widget.item.target.toString(),
                        style: const TextStyle(
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
                    percent: ((widget.item.target * 100 / widget.item.valuation) / 100),
                    progressColor: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  height: 30,
                  margin: const EdgeInsets.only(bottom: 10, top: 5),
                  width: MediaQuery.of(context).size.width - 40,
                  child: TabBar(
                    indicatorColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.black38,
                    labelColor: Theme.of(context).primaryColor,
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'Avenir'),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Avenir',
                    ),
                    tabs: const [
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
                SizedBox(
                  height: 400,
                  child: TabBarView(
                    controller: _tabController,
                    children: [InvestTab(item: widget.item), const Text("Files"), const CollabDetails(), StartupDetails(owner: widget.item.owner)],
                  ),
                ),
                InvestorButton(title: 'Invest', height: 60, textSize: 20, width: 300)
              ],
            ),
          ))
    ]));
  }
}
