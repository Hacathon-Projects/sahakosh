import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/notification_ui/investor/application/investor_noti_application.dart';
import 'package:sahakosh/notification_ui/investor/domain/investor_noti_model.dart';

class InvestorNotificationPage extends StatefulWidget {
  const InvestorNotificationPage({super.key});

  @override
  State<InvestorNotificationPage> createState() =>
      _InvestorNotificationPageState();
}

class _InvestorNotificationPageState extends State<InvestorNotificationPage> {
  bool isaccepted = true;
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
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  isaccepted
                      ? SizedBox(
                          height: 90,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Colors.grey[200],
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Align(
                                alignment: Alignment.center,
                                child: ListTile(
                                    leading: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/logo.png"),
                                    ),
                                    title: const Text(
                                        "You received a proposal from Subarna Poudel.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                    minVerticalPadding: 5,
                                    trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isaccepted = false;
                                                  });
                                                  Navigator.of(context)
                                                      .pushNamedAndRemoveUntil(
                                                          RouteConstant
                                                              .homeRoute,
                                                          (Route<dynamic>
                                                                  route) =>
                                                              false,
                                                          arguments: false);
                                                },
                                                borderRadius:
                                                    BorderRadius.circular(35.0),
                                                child: const Center(
                                                  child: Icon(Icons.check,
                                                      size: 20.0,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isaccepted = false;
                                                  });
                                                },
                                                borderRadius:
                                                    BorderRadius.circular(35.0),
                                                child: const Center(
                                                  child: Icon(Icons.close,
                                                      size: 20.0,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]))),
                          ))
                      : const SizedBox(),

                  //
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
                                        borderRadius: BorderRadius.circular(15),
                                      ),
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
                                                  fontSize: 13)),
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
