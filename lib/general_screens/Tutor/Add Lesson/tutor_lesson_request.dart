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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 20),
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
                              Icons
                                  .arrow_back_ios, // iOS-style back button icon
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Pop the current screen
                            },
                          ),
                          const Text(
                            "Make Lesson Offer",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 15),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Icon(Icons.calendar_month_outlined,
                                      color: Colors.deepPurple,
                                      size: logicalHeight * 0.15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Icon(
                                    Icons.person_2_outlined,
                                    color: Colors.deepPurple,
                                    size: logicalHeight * 0.15,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Icon(Icons.subject_outlined,
                                      color: Colors.deepPurple,
                                      size: logicalHeight * 0.15),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: logicalHeight * 0.025,
                          ),
                          Text('Date',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: logicalHeight * 0.03,
                                  fontWeight: FontWeight.bold)),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: logicalHeight * 0.08,
                                buttonwidth: logicalWidth * 0.55,
                                usingIcon: false,
                                text: 'Select Time',
                                textsize: 20,
                                circle: false,
                                onPressed: () {},
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40, left: 25, right: 25, bottom: 10),
                            child: Text('Student',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: logicalHeight * 0.03,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: logicalHeight * 0.08,
                                buttonwidth: logicalWidth * 0.55,
                                usingIcon: false,
                                text: 'Enter Student Email',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40, left: 25, right: 25, bottom: 10),
                            child: Text('Subject',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: logicalHeight * 0.03,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: logicalHeight * 0.08,
                                buttonwidth: logicalWidth * 0.55,
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
                      buttonheight: logicalHeight * 0.1,
                      buttonwidth: logicalWidth * 0.85,
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
