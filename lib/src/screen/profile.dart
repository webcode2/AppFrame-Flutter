import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String address;
  final String phone;
  final String registeredDate;
  final String hostBy;

  ProfileScreen({
    super.key,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    required this.registeredDate,
    required this.hostBy,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Name: $name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Email: $email',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Address: $address',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Phone: $phone',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Registered Date: $registeredDate',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Hosted By: $hostBy',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
