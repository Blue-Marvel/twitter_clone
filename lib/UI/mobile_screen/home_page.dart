import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Pages/Home.dart';
import '../Pages/Message.dart';
import '../Pages/NotificationPage.dart';
import '../Pages/Search.dart';
import '../Pages/Space.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
