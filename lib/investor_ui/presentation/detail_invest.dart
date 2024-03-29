import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sahakosh/investor_ui/domain/investor_model.dart';
import 'package:sahakosh/widgets/investor_ui/collab_details.dart';
import 'package:sahakosh/widgets/investor_ui/invest_tab.dart';
import 'package:sahakosh/widgets/investor_ui/startup_details.dart';
import 'package:sahakosh/widgets/primary_button.dart';

import 'proposal/proposal.dart';

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
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            widget.item.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          actions: const [Icon(Icons.more_vert), SizedBox(width: 10)],
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
                    Row(
                      children: [
                        const Text(
                          "Target :",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Rs. ${widget.item.raisingAmount.toString()}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Raised : ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(widget.item.target.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
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
                    percent: ((widget.item.target * 100 / widget.item.raisingAmount) / 100),
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
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
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
                    children: [
                      InvestTab(item: widget.item),
                      const Center(child: Text("Data not updated !!")),
                      const CollabDetails(),
                      StartupDetails(owner: widget.item.owner),
                    ],
                  ),
                ),
                PrimaryButton(
                    text: 'Invest',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return InvestorPage(
                          startup: widget.item,
                        );
                      }));
                    }),
              ],
            ),
          ))
    ]));
  }
}
