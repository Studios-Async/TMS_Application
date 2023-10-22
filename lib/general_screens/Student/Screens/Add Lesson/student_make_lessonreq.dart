import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

import '../../../../main.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
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
                icon: Icon(
                  Icons.arrow_back_ios, // iOS-style back button icon
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Pop the current screen
                },
              ),
              const Text(
                "Make Lesson Request",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            ],
          ),
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
                              text: 'Select Location',
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
              child: Icon(Icons.location_city_outlined,
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
    ])));
  }
}
