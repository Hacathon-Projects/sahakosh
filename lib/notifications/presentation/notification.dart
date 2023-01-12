import 'package:flutter/material.dart';
import 'package:sahakosh/notifications/applicatoin/notifications.dart';
import 'package:sahakosh/notifications/domain/model.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(children: [
                const SizedBox(width: 5),
                IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                const SizedBox(width: 15),
                const Text("Notifications", style: TextStyle(fontSize: 20, fontFamily: "latobold")),
                const SizedBox(width: 40),
              ]),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: SizedBox(
                child: FutureBuilder(
                    future: NotificationService.ReadJsonData(),
                    builder: (context, data) {
                      if (data.hasError) {
                        return Center(child: Text("${data.error}"));
                      } else if (data.hasData) {
                        var items = data.data as List<NotificationModel>;
                        return ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            // ignore: unnecessary_null_comparison
                            itemCount: items == null ? 0 : items.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  height: 90,
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                    color: Colors.grey[200],
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: ListTile(
                                        leading: const CircleAvatar(
                                          backgroundImage: AssetImage("assets/logo.png"),
                                        ),
                                        title: Text(items[index].notification!, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                                        minVerticalPadding: 5,
                                        subtitle: Text(items[index].time!, style: const TextStyle(fontSize: 13)),
                                        onTap: () {},
                                      ),
                                    ),
                                  ));
                            });
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
