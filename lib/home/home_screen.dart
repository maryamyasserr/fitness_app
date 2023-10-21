import 'package:flutter/material.dart';

import '../pages/screen_1/screen_one.dart';
import '../pages/screen_2/screen_two.dart';
import '../pages/screen_3/screen_three.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> pages = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree()
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home.png')),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/calendar.png')),
                label: 'Insights'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/user.png')),
                label: 'User')
          ],
        ),
    );
  }
}
