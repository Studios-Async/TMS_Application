import 'package:flutter/material.dart';
import 'package:tms/Utilities/notch.dart';
import 'package:tms/main.dart';

import '../../../Utilities/buttontemplate.dart';

class TutorMakeRequestsPage extends StatefulWidget {
  const TutorMakeRequestsPage({super.key});

  @override
  State<TutorMakeRequestsPage> createState() => _TutorMakeRequestsPageState();
}

class _TutorMakeRequestsPageState extends State<TutorMakeRequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Notch(title: "Make Lesson Offer"),
      Padding(padding: EdgeInsets.all(10)),
      Container(
        height: logicalHeight * 0.15,
        width: logicalWidth * 0.9,
        child: Stack(
          children: [
            Positioned(
                left: 80,
                top: logicalHeight * 0.02,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  width: logicalWidth * 0.7,
                  height: logicalHeight * 0.1,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NewButton(
                              buttonheight: logicalHeight * 0.072,
                              buttonwidth: logicalWidth * 0.67,
                              usingIcon: false,
                              text: 'Select Time',
                              textsize: 20,
                              circle: false,
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: (LinearGradient(
                  colors: [
                    Color.fromARGB(255, 179, 160, 219),
                    Color.fromARGB(255, 196, 193, 233)
                  ],
                  stops: [0.2, 1],
                )),
              ),
              child: Icon(Icons.calendar_month_outlined,
                  color: Colors.deepPurple, size: logicalHeight * 0.11),
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Container(
        height: logicalHeight * 0.15,
        width: logicalWidth * 0.9,
        child: Stack(
          children: [
            Positioned(
                left: 80,
                top: logicalHeight * 0.02,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  width: logicalWidth * 0.7,
                  height: logicalHeight * 0.1,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NewButton(
                              buttonheight: logicalHeight * 0.072,
                              buttonwidth: logicalWidth * 0.67,
                              usingIcon: false,
                              text: 'Select Student',
                              textsize: 20,
                              circle: false,
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: (LinearGradient(
                  colors: [
                    Color.fromARGB(255, 179, 160, 219),
                    Color.fromARGB(255, 196, 193, 233)
                  ],
                  stops: [0.2, 1],
                )),
              ),
              child: Icon(Icons.person_2_outlined,
                  color: Colors.deepPurple, size: logicalHeight * 0.11),
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Container(
        height: logicalHeight * 0.15,
        width: logicalWidth * 0.9,
        child: Stack(
          children: [
            Positioned(
                left: 80,
                top: logicalHeight * 0.02,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  width: logicalWidth * 0.7,
                  height: logicalHeight * 0.1,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NewButton(
                              buttonheight: logicalHeight * 0.072,
                              buttonwidth: logicalWidth * 0.67,
                              usingIcon: false,
                              text: 'Select Subject',
                              textsize: 20,
                              circle: false,
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: (LinearGradient(
                  colors: [
                    Color.fromARGB(255, 179, 160, 219),
                    Color.fromARGB(255, 196, 193, 233)
                  ],
                  stops: [0.2, 1],
                )),
              ),
              child: Icon(Icons.subject_outlined,
                  color: Colors.deepPurple, size: logicalHeight * 0.11),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: NewButton(
          buttonheight: logicalHeight * 0.1,
          buttonwidth: logicalWidth * 0.85,
          usingIcon: false,
          text: 'Confirm',
          textsize: 18,
          circle: false,
          onPressed: () {},
        ),
      )
    ]));
  }
}
