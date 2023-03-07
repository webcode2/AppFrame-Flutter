import 'package:flutter/material.dart';

class AuthNavHeader extends StatelessWidget {
  const AuthNavHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.account_circle,
            size: 80,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            'John Doe',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'john.doe@example.com',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
