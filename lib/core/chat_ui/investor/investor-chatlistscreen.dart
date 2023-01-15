import 'package:flutter/material.dart';
import 'package:sahakosh/core/routes/routes_constant.dart';
import 'package:sahakosh/models/chat_person.dart';
import 'package:sahakosh/widgets/chat_ui/ConversationList.dart';
import 'package:sahakosh/widgets/drawer.dart';

// ignore: must_be_immutable
class InvestorChatListScreen extends StatelessWidget {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "Subarna Poudel",
        secondaryText: "Digital Innovators",
        image: "https://avatars.githubusercontent.com/u/82575511?v=4",
        time: "Now"),
    ChatUsers(
        text: "Subina Shrestha",
        secondaryText: "Naamche Tech",
        image:
            "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "Yesterday"),
  ];
  InvestorChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text("Conversations"),
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteConstant.landingScreen,
                    (Route<dynamic> route) => false);
              }),
          IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => Navigator.of(context)
                  .pushNamed(RouteConstant.investorNotificationPage)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  type: "startup",
                  name: chatUsers[index].text,
                  messageText: chatUsers[index].secondaryText,
                  imageUrl: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
