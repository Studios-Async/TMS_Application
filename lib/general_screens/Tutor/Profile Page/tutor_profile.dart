import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/Utilities/student_balance.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/this_months_tutoring.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/subjects_teach.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/tutor_earnings.dart';

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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                          vertical: screenWidth * 0.05),
                      child: NewButton(
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "Subjects you teach",
                        textsize: screenWidth * 0.06,
                        circle: false,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubjectsPageTutor(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                          vertical: screenWidth * 0.05),
                      child: NewButton(
                        circle: false,
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "This Month's Teaching",
                        textsize: screenWidth * 0.06,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThisMonthsTutoringPage(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                          vertical: screenWidth * 0.05),
                      child: NewButton(
                        circle: false,
                        buttonheight: screenWidth * 0.25,
                        buttonwidth: screenWidth * 0.95,
                        usingIcon: false,
                        text: "Current Earnings",
                        textsize: screenWidth * 0.06,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => (TutorEarnings()),
                            ),
                          );
                        },
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