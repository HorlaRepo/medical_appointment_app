import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_appointment/screens/settings_screen.dart';

import '../widgets/custom_tab_bar.dart';
import 'home_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const SettingsScreen(),
  ];

  final List<Icon> _icons = const [
    Icon(
      FontAwesomeIcons.house,
      color: Colors.white,
    ),
    Icon(
      CupertinoIcons.calendar,
      color: Colors.white,
    ),
    Icon(
      Icons.chat_bubble_outline_rounded,
      color: Colors.white,
    ),
    Icon(
      Icons.settings_outlined,
      color: Colors.white,
    ),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20.0, top: 12.0),
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(
              () => _selectedIndex = index,
            ),
          ),
        ),
      ),
    );
  }
}
