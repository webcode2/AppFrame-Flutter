import 'package:app_frame/src/navigations/auth_stack.dart';
import 'package:flutter/material.dart';

import '../screen/homepage.dart';

class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({super.key});

  @override
  State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    // Check if the user is already logged in
    // You can use any authentication package like firebase_auth or custom logic
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    // TODO Add your authentication logic here

    bool isLoggedIn = true;
    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoggedIn ? const Home() : const AuthStack();
  }
}
