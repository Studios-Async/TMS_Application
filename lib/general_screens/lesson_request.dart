import 'package:flutter/material.dart';
import 'package:tms/buttontemplate.dart';

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
            child: Container(
                padding: const EdgeInsets.only(top: 25, bottom: 40),
                child: Column(children: [
                  Text('Make Lesson Request',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.calendar_month_outlined,
                                color: Colors.deepPurple, size: 110),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(
                              Icons.location_city_outlined,
                              color: Colors.deepPurple,
                              size: 110,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.subject_outlined,
                                color: Colors.deepPurple, size: 110),
                          )
                        ],
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 25, right: 25, bottom: 10),
                            child: Text('Date',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: NewButton(
                                voidcallback: null,
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Select Time',
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Location',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: NewButton(
                                voidcallback: null,
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Lesson Link',
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Subject',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: NewButton(
                                voidcallback: null,
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Select Subject',
                              )),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: NewButton(
                        voidcallback: null,
                        buttonheight: 60,
                        buttonwidth: 340,
                        usingIcon: false,
                        text: 'Confirm'),
                  )
                ]))));
  }
}
