import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

class StudentProfilePage extends StatefulWidget {
  const StudentProfilePage({super.key});

  @override
  State<StudentProfilePage> createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage> {
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Student Name',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.01,
                        vertical: screenWidth * 0.05),
                    child: NewButton(
                      voidcallback: null,
                      buttonheight: screenWidth * 0.25,
                      buttonwidth: screenWidth * 0.95,
                      usingIcon: false,
                      text: "Subjects you Study",
                      textsize: screenWidth * 0.06,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.01,
                        vertical: screenWidth * 0.05),
                    child: NewButton(
                      voidcallback: null,
                      buttonheight: screenWidth * 0.25,
                      buttonwidth: screenWidth * 0.95,
                      usingIcon: false,
                      text: "This months learning",
                      textsize: screenWidth * 0.06,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.01,
                        vertical: screenWidth * 0.05),
                    child: NewButton(
                      voidcallback: null,
                      buttonheight: screenWidth * 0.25,
                      buttonwidth: screenWidth * 0.95,
                      usingIcon: false,
                      text: "Current balance",
                      textsize: screenWidth * 0.06,
                    ),
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
