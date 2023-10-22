import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/main.dart';

import '../../../../Tutor/Profile Page/Utilities/lesson_historywidget.dart';

class StudentBalance extends StatefulWidget {
  const StudentBalance({super.key});

  @override
  State<StudentBalance> createState() => _StudentBalance();
}

class _StudentBalance extends State<StudentBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios, // iOS-style back button icon
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Pop the current screen
                    },
                  ),
                  const Text(
                    "Balance",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 50),
            child: Column(children: [
              Container(
                width: logicalWidth * 0.9,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(46, 104, 58, 183)),
                child: Text('NAME, your balance this month is: £---',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                  width: logicalWidth * 0.9,
                  height: logicalHeight * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
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
                      Padding(padding: EdgeInsets.all(10)),
                      Text('History ',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Container(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return const LessonHistoryWidget(
                                  subject: 'Maths', pay: 45);
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: NewButton(
                  circle: false,
                  onPressed: () {},
                  buttonheight: 60,
                  buttonwidth: 100,
                  usingIcon: false,
                  text: 'Pay',
                  textsize: 18,
                ),
              )
            ]),
          ),
        ],
      ),
    )));
  }
}
