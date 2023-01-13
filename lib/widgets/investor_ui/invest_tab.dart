import 'package:flutter/material.dart';
import 'package:sahakosh/investor_ui/domain/investor_model.dart';

class InvestTab extends StatelessWidget {
  final InvestorModel item;

  const InvestTab({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Text(
              item.long_description.toString(),
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Divider(height: 1),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Startup Valuation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text("Rs. ${item.valuation.toString()}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Owner', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(item.owner, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Amount Raising', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text("Rs. ${item.raisingAmount}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Operating years', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(item.operating_yrs, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Address', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(item.address, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Equity', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(item.equity.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 15),
            const Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
