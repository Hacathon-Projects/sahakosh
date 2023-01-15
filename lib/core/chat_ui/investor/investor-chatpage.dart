import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahakosh/calendar_ui/calendarscreen.dart';
import 'package:sahakosh/models/chat_message.dart';
import 'package:url_launcher/url_launcher.dart';

class InvestorChatScreen extends StatefulWidget {
  const InvestorChatScreen({super.key});

  @override
  State<InvestorChatScreen> createState() => _InvestorChatScreenState();
}

class _InvestorChatScreenState extends State<InvestorChatScreen> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, sir", messageType: "receiver"),
    ChatMessage(
        messageContent: "Would you like to invest in our company?",
        messageType: "receiver"),
  ];

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60, // Set this height
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[800],
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.mayoclinic.org/-/media/kcms/employees/2020/06/02/15/25/patress-persons-15375439.jpg"),
                    maxRadius: 20),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Subarna Poudel",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 1),
                      Text("Online",
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    String url = "mailto:subarnapdl@gmail.com";
                    await launchUrl(Uri.parse(url));
                  },
                  child: const Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Icon(
                    CupertinoIcons.calendar,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScheduleMeetingPage())),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade200
                          : Colors.blue[200]),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        messages.add(ChatMessage(
                            messageContent: _textEditingController.text,
                            messageType: "sender"));
                        _textEditingController.clear();
                        FocusManager.instance.primaryFocus!.unfocus();
                      });
                    },
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
