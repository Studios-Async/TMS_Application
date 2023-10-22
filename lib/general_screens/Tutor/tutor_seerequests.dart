import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Tutor/tutor_home.dart';
import 'package:tms/main.dart';

class LessonRequest extends StatelessWidget {
  String? studentName;
  String? subject;
  String? time;

  LessonRequest(
      {super.key,
      required this.studentName,
      required this.subject,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.deepPurple),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Column(
            children: [
              //Padding(padding: EdgeInsets.only(top: 13, bottom: 13, left: 20)),
              //Text(studentName!,
              //    style: const TextStyle(
              //        color: Colors.white,
              //        fontWeight: FontWeight.bold,
              //        fontSize: 35)),
              //Text(subject!,
              //    style: const TextStyle(
              //        color: Colors.white,
              //        fontWeight: FontWeight.bold,
              //        fontSize: 35)),
              //Text(time! as String,
              //    style: const TextStyle(
              //        color: Colors.white,
              //        fontWeight: FontWeight.bold,
              //        fontSize: 35)),
              //Padding(padding: EdgeInsets.all(10))
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                padding: EdgeInsets.all(5),
                children: [
                  Text(subject!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10)),
                  Text(studentName!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10)),
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(30)),
          Container(
              height: 80,
              width: 100,
              color: Colors.deepPurple,
              child: NewButton(
                  onPressed: () {},
                  buttonheight: 15,
                  buttonwidth: 25,
                  usingIcon: true,
                  icon: Icons.check,
                  circle: false,
                  textsize: 18))

          //approve button here
        ],
      ),
    );
  }
}

class SeeRequestsPage extends StatefulWidget {
  const SeeRequestsPage({super.key});

  @override
  State<SeeRequestsPage> createState() => _SeeRequestsState();
}

class _SeeRequestsState extends State<SeeRequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
          padding: const EdgeInsets.only(top: 25, bottom: 40),
          child: Column(
            children: [
              const Text('Your Lesson Requests:',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 30,
                ),
                child: NewButton(
                  buttonheight: 60,
                  buttonwidth: 340,
                  icon: null,
                  text: 'Make Lesson Offer:',
                  textsize: 18,
                  circle: false,
                  onPressed: () {},
                  usingIcon: null,
                ),
              ),
              LessonRequest(
                  studentName: 'Name', subject: 'Subject', time: '13:30')
            ],
          )),
    )));
  }
}

class MakeRequestsPage extends StatefulWidget {
  const MakeRequestsPage({super.key});

  @override
  State<MakeRequestsPage> createState() => _MakeRequestsState();
}

class _MakeRequestsState extends State<MakeRequestsPage> {
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
                      NewButton(
                        buttonheight: 60,
                        buttonwidth: 50,
                        icon: Icons.arrow_back,
                        textsize: 18,
                        circle: true,
                        onPressed: () {},
                        usingIcon: null,
                      ),
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
                                text: 'Select Time',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                                usingIcon: null,
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
                                text: 'Enter Student Email',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                                usingIcon: null,
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
                                text: 'Select Subject',
                                textsize: 18,
                                circle: false,
                                onPressed: () {},
                                usingIcon: null,
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
                      icon: null,
                      text: 'Confirm',
                      textsize: 18,
                      circle: false,
                      onPressed: () {},
                      usingIcon: null,
                    ),
                  )
                ]))));
  }
}
