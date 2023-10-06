import 'package:flutter/material.dart';
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
        body: SafeArea(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Make Lesson Offer',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.calendar_month_outlined,
                                color: Colors.deepPurple,
                                size: logicalHeight * 0.125),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Colors.deepPurple,
                              size: logicalHeight * 0.125,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.subject_outlined,
                                color: Colors.deepPurple,
                                size: logicalHeight * 0.125),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 25, right: 25, bottom: 10),
                            child: Text('Date',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: logicalHeight * 0.07,
                                buttonwidth: logicalWidth * 0.5,
                                usingIcon: false,
                                text: 'Select Time',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Student',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: logicalHeight * 0.07,
                                buttonwidth: logicalWidth * 0.5,
                                usingIcon: false,
                                text: 'Enter Student Email',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Subject',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: logicalHeight * 0.07,
                                buttonwidth: logicalWidth * 0.5,
                                usingIcon: false,
                                text: 'Select Subject',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                              )),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: NewButton(
                      buttonheight: logicalHeight * 0.09,
                      buttonwidth: 340,
                      usingIcon: false,
                      text: 'Confirm',
                      textsize: 18,
                      circle: false,
                      onPressed: () {},
                    ),
                  )
                ]))));
  }
}
