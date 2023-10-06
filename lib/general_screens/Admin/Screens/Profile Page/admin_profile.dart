import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/main.dart';

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth * 0.5,
                  height: screenWidth * 0.5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Center(
                    child: Text(
                      'Profile Pic',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Text(
                'Admin Name',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 12),
                      child: NewButton(
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        circle: false,
                        usingIcon: false,
                        text: "Change Email",
                        textsize: logicalWidth * 0.06,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 12),
                      child: NewButton(
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        circle: false,
                        usingIcon: false,
                        text: "Change Password",
                        textsize: logicalWidth * 0.06,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 12),
                      child: NewButton(
                        circle: false,
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "Log Out",
                        textsize: logicalWidth * 0.06,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
