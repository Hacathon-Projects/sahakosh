import 'package:flutter/material.dart';
import 'package:sahakosh/portfolio_ui/domain/data.dart';
import 'package:sahakosh/portfolio_ui/domain/portfolioModel.dart';

class PortfolioManagementScreen extends StatelessWidget {
  const PortfolioManagementScreen({Key? key}) : super(key: key);

  final String _currentvalue = "100";
  final String _investment = '5.11 lakhs';
  final String _currentMonthProfit = '28k';
  final double _profitPercent = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
        title: const Text(
          'My Portfolio',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.fromLTRB(13, 10, 13, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Summary
                Card(
                  color: Colors.grey[200],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 18, 12, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Summary',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      'Portfolio\'s Value',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "रु $_currentvalue",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: const Text(
                                      'Profit Per. %',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      "$_profitPercent%",
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        const SizedBox(height: 25),
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      'Investment',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'रु $_investment',
                                      style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: const Text(
                                        'Current Profit',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      _currentMonthProfit,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const Divider(),
                const SizedBox(height: 5),

                //  Your Stocks
                const Text(
                  "Your Stocks",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(height: 7),
                Column(
                  children: [
                    for (var item in portfolioStocks)
                      portfolioStock(context, item),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

portfolioStock(
  context,
  PortfolioModel stock,
) {
  return GestureDetector(
    onTap: () {
      //  TODO
    },
    child: Card(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.grey[200],
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  alignment: Alignment.center,
                  width: 45,
                  child: Image.asset(stock.logoSrc),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Equity",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${stock.equityPercent}%",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Company Name
                  Text(
                    stock.companyName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),

                  //  Growth Percent
                  Text(
                    stock.isGain ? "↑${stock.change}%" : "↓${stock.change}%",
                    style: TextStyle(
                      fontSize: 15,
                      color: stock.isGain ? Colors.green : Colors.red,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),

                  //
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Paid up capital
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Paid Up Capital",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 0),
                                child: Text(
                                  "रु ${stock.paidUpCapital}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          // last month revenue
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Last Month\nRevenue",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "रु ${stock.revenuePreviousMonth}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 25),
                      //
                      Column(
                        children: [
                          // Invested Value
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Invested Value",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "रु ${stock.investedPrice}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          // Current month revenue
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Current Month\nRevenue",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "रु ${stock.revenueThisMonth}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}
