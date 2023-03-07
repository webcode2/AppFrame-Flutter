import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String profileImageUrl;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.email,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(profileImageUrl),
                ),
                SizedBox(height: 16.0),
                Text(
                  name,
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  email,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bio',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat, nisl ac eleifend pharetra, lorem justo tristique urna, vel luctus metus felis vel dui.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
