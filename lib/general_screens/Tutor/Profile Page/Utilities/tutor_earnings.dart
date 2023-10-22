import 'package:flutter/material.dart';
import 'package:tms/main.dart';

import '../../../Student/Screens/Profile Page/Utilities/student_balance.dart';
import 'lesson_historywidget.dart';

class TutorEarnings extends StatefulWidget {
  const TutorEarnings({super.key});

  @override
  State<TutorEarnings> createState() => _TutorEarnings();
}

class _TutorEarnings extends State<TutorEarnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 40),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios, // iOS-style back button icon
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Pop the current screen
                    },
                  ),
                  const Text(
                    "This Months Earnings",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              width: logicalWidth * 0.9,
              height: logicalHeight * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.03,
                        0.4,
                        1
                      ],
                      colors: [
                        Color.fromARGB(255, 182, 176, 246),
                        Color.fromARGB(255, 166, 137, 230),
                        Color.fromARGB(255, 134, 99, 239)
                      ])),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  const Text('History ',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  const Divider(
                    height: 10,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Container(
                      height: logicalHeight * 0.55,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const LessonHistoryWidget(
                              subject: 'English', pay: 7);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    )));
  }
}
