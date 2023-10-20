import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/main.dart';

import '../../../../Utilities/profilebutton.dart';
import '../../../Student/Screens/Profile Page/Utilities/student_balance.dart';
import '../../../Student/Screens/Profile Page/Utilities/subjects_study.dart';
import '../../../Student/Screens/Profile Page/Utilities/this_months_learning.dart';

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
                      width: logicalWidth * 0.45,
                      height: logicalWidth * 0.45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
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
                              "Tutor Name",
                              style: TextStyle(
                                  fontSize: logicalHeight * 0.03,
                                  color: Colors.white),
                            ),
                            Text(
                              "@Email",
                              style: TextStyle(
                                  fontSize: logicalHeight * 0.02,
                                  color: Colors.grey.shade700),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  width: logicalWidth * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      ProfileButton(
                        logicalHeight: logicalHeight,
                        logicalWidth: logicalWidth,
                        buttonText: "Subjects you study",
                        theicon: Icons.add,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubjectsPage(),
                            ),
                          );
                        },
                      ),
                      ProfileButton(
                        logicalHeight: logicalHeight,
                        logicalWidth: logicalWidth,
                        buttonText: "This months Learning",
                        theicon: Icons.add,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThisMonthsLearningPage(),
                            ),
                          );
                        },
                      ),
                      ProfileButton(
                        logicalHeight: logicalHeight,
                        logicalWidth: logicalWidth,
                        buttonText: "Balance",
                        theicon: Icons.add,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StudentBalance(),
                            ),
                          );
                        },
                      ),
                      ProfileButton(
                        logicalHeight: logicalHeight,
                        logicalWidth: logicalWidth,
                        buttonText: "Settings",
                        theicon: Icons.add,
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
