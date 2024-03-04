import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore package

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance; // Initialize Firestore

  // Function to add user to Firestore
  void addUser() {
    _firestore.collection('users').add({
      'name': 'John Doe',
      'age': 19,
      'email': 'john.doe@example.com',
    });
    print("done");
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu_rounded),
      iconSize: 30,
      onPressed: () {
        addUser(); // Call addUser function when button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Placeholder()),
        );
      },
    );
  }
}
