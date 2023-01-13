import 'package:flutter/material.dart';
import 'package:sahakosh/models/chat_person.dart';
import 'package:sahakosh/widgets/chat_ui/ConversationList.dart';

// ignore: must_be_immutable
class ChatListScreen extends StatelessWidget {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "Jane Russel",
        secondaryText: "Awesome Setup",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "Now"),
    ChatUsers(
        text: "Glady's Murphy",
        secondaryText: "That's Great",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "Yesterday"),
    ChatUsers(
        text: "Jorge Henry",
        secondaryText: "Hey where are you?",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "31 Mar"),
    ChatUsers(
        text: "Philip Fox",
        secondaryText: "Busy! Call me in 20 mins",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "28 Mar"),
    ChatUsers(
        text: "Debra Hawkins",
        secondaryText: "Thankyou, It's awesome",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "23 Mar"),
    ChatUsers(
        text: "Jacob Pena",
        secondaryText: "will update you in evening",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "17 Mar"),
    ChatUsers(
        text: "Andrey Jones",
        secondaryText: "Can you please share the file?",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "24 Feb"),
    ChatUsers(
        text: "John Wick",
        secondaryText: "How are you?",
        image: "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg",
        time: "18 Feb"),
  ];
  ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  children: <Widget>[
                    IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Conversations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
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
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade100)),
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
