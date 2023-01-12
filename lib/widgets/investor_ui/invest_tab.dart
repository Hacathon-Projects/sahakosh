import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sahakosh/widgets/investor_ui/investor_button.dart';

class InvestTab extends StatelessWidget {
  final String description;
  final double valuation;
  const InvestTab(
      {super.key, required this.description, required this.valuation});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Text(description),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Startup Valuation',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rs  ${valuation.toString()}",
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
