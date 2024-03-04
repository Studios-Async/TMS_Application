import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/Utilities/student_balance.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/this_months_tutoring.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/subjects_teach.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/tutor_earnings.dart';
import 'package:tms/main.dart';

import '../../../Utilities/profilebutton.dart';

class TutorProfilePage extends StatefulWidget {
  const TutorProfilePage({super.key});

  @override
  State<TutorProfilePage> createState() => _TutorProfilePageState();
}

class _TutorProfilePageState extends State<TutorProfilePage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String tutorName = ""; // Variable to store tutor's name

  @override
  void initState() {
    super.initState();
    // Call getUser function when the widget initializes
    getUser(FirebaseAuth.instance.currentUser!.uid);
  }

  // Function to get user data from Firestore
  void getUser(String userId) {
    _firestore.collection('users').doc(userId).get().then((documentSnapshot) {
      if (documentSnapshot.exists) {
        // Update tutorName variable with the retrieved name
        setState(() {
          tutorName = documentSnapshot.data()?['name'];
        });
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: logicalWidth * 0.4,
                      height: logicalWidth * 0.4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 130, 82, 213),
                      ),
                      child: const Center(
                        child: Text(
                          'Profile Pic',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              tutorName, // Display tutor's name
                              style: TextStyle(
                                  fontSize: logicalHeight * 0.03,
                                  color: Colors.white),
                            ),
                            Text(
                              "@Email",
                              style: TextStyle(
                                  fontSize: logicalHeight * 0.02,
                                  color: Colors.grey.shade900),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  width: logicalWidth * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: logicalHeight * 0.015,
                      ),
                      ProfileButton(
                        text: "Subjects you Teach",
                        icon: Icons.my_library_books,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubjectsPageTutor(),
                            ),
                          );
                        },
                      ),
                      ProfileButton(
                        text: "This months Tutoring",
                        icon: Icons.calendar_month,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThisMonthsTutoringPage(),
                            ),
                          );
                        },
                      ),
                      ProfileButton(
                        text: "Balance",
                        icon: Icons.account_balance_wallet,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TutorEarnings(),
                            ),
                          );
                        },
                      ),
                      ProfileButton(
                        text: "Settings",
                        icon: Icons.settings,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Placeholder(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
