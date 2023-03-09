import 'package:app_frame/src/screen/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../navigations/drawer.dart';
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
    ScreenFour(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.grey),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.green, // Navigation bar
          statusBarColor: Colors.white, // Status bar
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.green,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      drawer: const MyDrawer(),
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
