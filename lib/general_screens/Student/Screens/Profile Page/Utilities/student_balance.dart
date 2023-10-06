import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
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
            padding: const EdgeInsets.only(top: 25, bottom: 40),
            child: Column(children: [
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 25),
                child: Text('NAME, your balance this month is: £---',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: Text('Transactions: ',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
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
