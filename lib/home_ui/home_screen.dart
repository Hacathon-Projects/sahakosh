import 'package:flutter/material.dart';
import 'package:sahakosh/core/chat_ui/investor/investor-chatlistscreen.dart';
import 'package:sahakosh/core/chat_ui/startup/startup-chatlistscreen.dart';
import 'package:sahakosh/core/later_screen.dart';
import 'package:sahakosh/core/profile_ui/investor_profile.dart';
import 'package:sahakosh/core/profile_ui/startup_profile.dart';
import 'package:sahakosh/investor_ui/presentation/inverstor_home.dart';
import 'package:sahakosh/portfolio_ui/presentation/portfolio_screen.dart';
import 'package:sahakosh/startup_ui/presentation/startuphome/startuphome.dart';

int _selectedIndex = 0;

class HomeScreen extends StatefulWidget {
  final bool isStartup;
  const HomeScreen({super.key, required this.isStartup});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;

    // Back Press Function
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Do you want to exit the App?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  //return false when click on "NO"
                  child: const Text('No'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  //return true when click on "Yes"
                  child: const Text('Yes'),
                ),
              ],
            ),
          ) ??
          false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        //    Body   //
        body: _selectedIndex == 0
            ? widget.isStartup
                ? const StartupHomeScreen()
                : const InvestorHomeScreen()
            : _selectedIndex == 1
                ? widget.isStartup
                    ? const LaterScreen()
                    : const PortfolioManagementScreen()
                : _selectedIndex == 2
                    ? widget.isStartup
                        ? StartupChatListScreen()
                        : InvestorChatListScreen()
                    : widget.isStartup
                        ? const StartupProfileScreen()
                        : const InvestorProfileScreen(),

        //    Bottom Navbar   //
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.copy_all_rounded),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
