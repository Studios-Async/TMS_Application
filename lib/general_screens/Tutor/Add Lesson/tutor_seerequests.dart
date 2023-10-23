import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Tutor/Add%20Lesson/tutor_lesson_request.dart';
import 'package:tms/general_screens/Tutor/Home/tutor_home.dart';
import 'package:tms/general_screens/Student/Screens/Add%20Lesson/student_make_lessonreq.dart';
import 'package:tms/main.dart';

class LessonRequest extends StatelessWidget {
  String? studentName;
  String? subject;
  String? time;
  String? year;
  double? textsize = logicalWidth * 0.07;

  LessonRequest(
      {super.key,
      required this.studentName,
      required this.subject,
      required this.time,
      required this.year});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: logicalWidth * 0.88,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: logicalWidth * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1, color: Color.fromARGB(159, 89, 44, 147))),
                padding: EdgeInsets.all(9),
                child: Text(studentName!,
                    style: TextStyle(
                        color: Color.fromARGB(195, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: textsize)),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                width: logicalWidth * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1, color: Color.fromARGB(159, 89, 44, 147))),
                padding: EdgeInsets.all(9),
                child: Text('Year ' + year! as String,
                    style: TextStyle(
                        color: Color.fromARGB(178, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: textsize)),
              ),
              Padding(padding: EdgeInsets.all(7)),
              NewButton(
                  onPressed: () {},
                  buttonheight: logicalHeight * 0.03,
                  buttonwidth: logicalWidth * 0.25,
                  usingIcon: true,
                  icon: Icons.check,
                  circle: false,
                  textsize: 15),
              Padding(padding: EdgeInsets.all(10)),
            ],
          ),
          Padding(padding: EdgeInsets.all(15)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: logicalWidth * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1, color: Color.fromARGB(159, 89, 44, 147))),
                padding: EdgeInsets.all(9),
                child: Text(subject!,
                    style: TextStyle(
                        color: Color.fromARGB(183, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: textsize)),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                width: logicalWidth * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1, color: Color.fromARGB(159, 89, 44, 147))),
                padding: EdgeInsets.all(9),
                child: Text(time! as String,
                    style: TextStyle(
                        color: Color.fromARGB(182, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: textsize)),
              ),
              Padding(padding: EdgeInsets.all(7)),
              NewButton(
                  onPressed: () {},
                  buttonheight: logicalHeight * 0.03,
                  buttonwidth: logicalWidth * 0.25,
                  usingIcon: true,
                  icon: Icons.close,
                  circle: false,
                  textsize: 15),
              Padding(padding: EdgeInsets.all(10)),
            ],
          )
        ],
      ),
    );
  }
}

class TutorSeeRequestsPage extends StatefulWidget {
  const TutorSeeRequestsPage({super.key});

  @override
  State<TutorSeeRequestsPage> createState() => _TutorSeeRequestsPageState();
}

class _TutorSeeRequestsPageState extends State<TutorSeeRequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
          padding: const EdgeInsets.only(top: 0, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        "Your Lesson Requests",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    LessonRequest(
                      studentName: 'Name',
                      subject: 'Subject',
                      time: '13:30',
                      year: '10',
                    )
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 30,
                ),
                child: NewButton(
                  buttonheight: logicalHeight * 0.09,
                  buttonwidth: logicalWidth * 0.9,
                  usingIcon: false,
                  text: 'Make Lesson Offer:',
                  textsize: 18,
                  circle: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TutorMakeRequestsPage(),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    )));
  }
}
