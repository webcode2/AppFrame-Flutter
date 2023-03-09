import 'dart:async';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;
  Map<String, dynamic> userData = {};

  // Fake data loading function
  Future<Map<String, dynamic>> _loadUserData() async {
    await Future.delayed(const Duration(seconds: 5)); // Simulate loading delay
    return {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
      'address': '123 Main St, Anytown, USA',
      'phone': '555-555-1212',
      'registeredDate': 'Jan 1, 2022',
      'hostedBy': 'Example Corp',
      'imageURL': 'https://picsum.photos/200/300', // Placeholder image URL
    };
  }

  @override
  void initState() {
    super.initState();
    _loadUserData().then((data) {
      setState(() {
        userData = data;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(userData['imageURL']),
                    radius: 50.0,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    userData['name'],
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    userData['email'],
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    userData['address'],
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    userData['phone'],
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Registered on ${userData['registeredDate']}',
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Hosted by ${userData['hostedBy']}',
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
