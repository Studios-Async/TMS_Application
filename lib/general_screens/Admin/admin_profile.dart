import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

class AdminProfilePage extends StatefulWidget {
  const AdminProfilePage({super.key});

  @override
  State<AdminProfilePage> createState() => _AdminProfilePageState();
}

class _AdminProfilePageState extends State<AdminProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                width: screenWidth * 0.5,
                height: screenWidth * 0.5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: const Center(
                  child: Text(
                    'Profile Pic',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Student Name',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Column(
                children: [
                  NewButton(
                    voidcallback: null,
                    buttonheight: screenWidth * 0.25,
                    buttonwidth: screenWidth * 0.95,
                    usingIcon: false,
                    text: "Change Email",
                  ),
                  const SizedBox(height: 40),
                  NewButton(
                    voidcallback: null,
                    buttonheight: screenWidth * 0.25,
                    buttonwidth: screenWidth * 0.95,
                    usingIcon: false,
                    text: "Change Password",
                  ),
                  const SizedBox(height: 40),
                  NewButton(
                    voidcallback: null,
                    buttonheight: screenWidth * 0.25,
                    buttonwidth: screenWidth * 0.95,
                    usingIcon: false,
                    text: "Log Out",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
