import 'package:flutter/material.dart';
import 'package:twitter_clone/UI/mobile_screen/mobile_screen.dart';
import 'package:twitter_clone/UI/tab_screen/tab_screen.dart';

import '../UI/web_screen/web_screen.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return const WebScreen();
      } else if (constraints.maxWidth > 600) {
        return const TabScreen();
      } else {
        return const MobileScreen();
      }
    });
  }
}
