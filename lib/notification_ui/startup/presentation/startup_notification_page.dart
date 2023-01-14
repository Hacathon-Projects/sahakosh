import 'package:flutter/material.dart';
import 'package:sahakosh/notification_ui/startup/application/startup_noti_application.dart';
import 'package:sahakosh/notification_ui/startup/domain/startup_noti_model.dart';

class StartupNotificationPage extends StatelessWidget {
  const StartupNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  FutureBuilder(
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                          leading: const CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/logo.png"),
                                          ),
                                          title: Text(
                                              items[index].notification!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15)),
                                          minVerticalPadding: 5,
                                          subtitle: Text(items[index].time!,
                                              style: const TextStyle(
                                                  fontSize: 14)),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
