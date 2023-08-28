import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

class TutorProfilePage extends StatefulWidget {
  const TutorProfilePage({super.key});

  @override
  State<TutorProfilePage> createState() => _TutorProfilePageState();
}

class _TutorProfilePageState extends State<TutorProfilePage> {
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
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
             
              const Text(
                'Tutor Name',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewButton(
                        voidcallback: null,
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "Subjects you teach",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewButton(
                        voidcallback: null,
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "This Month's Teaching",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewButton(
                        voidcallback: null,
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "Current Earnings",
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
