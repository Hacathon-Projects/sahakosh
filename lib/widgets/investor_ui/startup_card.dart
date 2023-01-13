import 'package:flutter/material.dart';
import 'package:sahakosh/investor_ui/presentation/detail_invest.dart';

class StartupCard extends StatelessWidget {
  var title;
  final String category;
  final String operating_yrs;
  final String image;
  final int money;
  var item;
  StartupCard(
      {super.key,
      required this.item,
      required this.title,
      required this.category,
      required this.image,
      required this.money,
      required this.operating_yrs});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return InvestDetail(item: item);
        }));
      },
      child: Container(
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 130,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(7),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Looking For",
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                    Text(
                      "Rs ${money.toString()}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Operating Years',
                          style: TextStyle(color: Colors.white70, fontSize: 8),
                        ),
                        Text(
                          operating_yrs,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
