import 'package:app_frame/src/screen/login.dart';
import 'package:app_frame/src/screen/registration.dart';
import 'package:flutter/material.dart';

class AuthStack extends StatefulWidget {
  const AuthStack({super.key});

  @override
  State<AuthStack> createState() => _AuthStackState();
}

class _AuthStackState extends State<AuthStack> {
  final int _currentIndex = 0;

  final List<Widget> _screens = [
    const LoginScreen(),
    const RegistrationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _currentIndex != 0,
            child: _screens[0],
          ),
          Offstage(
            offstage: _currentIndex != 1,
            child: _screens[1],
          ),
        ],
      ),
    );
  }
}
