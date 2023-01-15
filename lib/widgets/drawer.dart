import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: Column(
          children: [
            drawerHeader(context),
            const SizedBox(height: 10),
            drawerBody(context),
          ],
        ),
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.blue[800]),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 64,
              width: 64,
            ),
            const SizedBox(height: 20),
            const Text(
              'Sahakosh',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget drawerBody(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          listTile(text: 'Home', isSelected: true, onClick: () {}),
          const Divider(),
          listTile(text: 'Profile', onClick: () {}),
          listTile(text: 'Chats', onClick: () {}),
          listTile(text: 'Portfolio', onClick: () {}),
          const Divider(),
          const Spacer(),
          listTile(text: 'Exit', onClick: () {}),
        ],
      ),
    );
  }
}

ListTile listTile(
    {required String text,
    bool isSelected = false,
    required Function()? onClick}) {
  return ListTile(
    visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
    tileColor: isSelected ? Colors.grey[300] : null,
    title: Text(text, style: const TextStyle(fontSize: 15)),
    onTap: onClick,
  );
}
