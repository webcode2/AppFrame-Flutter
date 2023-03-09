import 'package:app_frame/src/screen/profile.dart';
import 'package:app_frame/src/screen/test.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'defaut_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DefaultHomeScreen(),
    ScreenOne(),
    ScreenTwo(),
    ChatScreen(),
     ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        selectedIconTheme: IconThemeData(color: Colors.green.shade800),
        elevation: 10,
        unselectedItemColor: Colors.black38,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_sharp),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Quick token',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
