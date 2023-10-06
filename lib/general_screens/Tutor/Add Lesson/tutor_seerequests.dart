import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Tutor/Add%20Lesson/tutor_lesson_request.dart';
import 'package:tms/general_screens/Tutor/Home/tutor_home.dart';
import 'package:tms/general_screens/Tutor/Add%20Lesson/student_make_lessonreq.dart';
import 'package:tms/main.dart';

class LessonRequest extends StatelessWidget {
  String? StudentName;
  String? Subject;
  DateTime? time;

  LessonRequest(
      {super.key,
      required this.StudentName,
      required this.Subject,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      color: Colors.deepPurple,
      child: Row(
        children: [
          Column(
            children: [
              Text(StudentName!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              Text(Subject!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              Text(time! as String,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ],
          ),
          //approve button here
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
