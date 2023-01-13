import 'package:flutter/material.dart';
import 'package:sahakosh/investor_ui/domain/investor_model.dart';

class InvestTab extends StatelessWidget {
  final InvestorModel item;

  const InvestTab({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Text(item.long_description.toString()),
            const SizedBox(height: 10),
            const Divider(height: 1),
            const SizedBox(height: 10),
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
                Text(item.raisingAmount.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Operatin years', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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
            const SizedBox(height: 10),
            const Divider(height: 1),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (context) {
            //         return ChatListScreen();
            //       }));
            //     },
            //     style:
            //         ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
            //     child: Row(mainAxisSize: MainAxisSize.min, children: const [
            //       Text('Invest',
            //           style:
            //               TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
            //       SizedBox(width: 10),
            //       Icon(Icons.attach_money_outlined, size: 20)
            //     ])),
          ],
        ),
      ),
    );
  }
}
