import 'package:app_frame/src/screen/test.dart';
import 'package:flutter/material.dart';

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
    ScreenThree(),
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
        backgroundColor: Colors.green.shade800,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.diamond_outlined),
            backgroundColor: Colors.green.shade800,
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.history_sharp),
            label: 'Screen one',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Screen Two',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Screen Three',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Screen Four',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
