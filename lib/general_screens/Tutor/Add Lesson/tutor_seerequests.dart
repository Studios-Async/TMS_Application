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
              Padding(padding: EdgeInsets.all(10)),
              Text(studentName!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
              Text(subject!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
              Text(time! as String,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
              Padding(padding: EdgeInsets.all(10))
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
                  buttonwidth: 30,
                  usingIcon: true,
                  icon: Icons.check,
                  circle: false,
                  textsize: 18))
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
          padding: const EdgeInsets.only(top: 25, bottom: 40),
          child: Column(
            children: [
              Text('Your Lesson Requests:',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: logicalHeight * 0.0325)),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    //HERE
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
