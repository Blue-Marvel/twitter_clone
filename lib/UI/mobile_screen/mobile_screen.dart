import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Util/Pages/Home.dart';
import '../../Util/Pages/Message.dart';
import '../../Util/Pages/NotificationPage.dart';
import '../../Util/Pages/Search.dart';
import '../../Util/Pages/Space.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      Home(),
      Search(),
      Space(),
      NotificationPage(),
      Message(),
    ];

    return Scaffold(
        body: Center(
          child: screens[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _navigationEvent,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ' '),
            BottomNavigationBarItem(icon: Icon(Icons.mic), label: ' '),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bell), label: ' '),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline_outlined), label: ' '),
          ],
        ));
  }

  void _navigationEvent(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
