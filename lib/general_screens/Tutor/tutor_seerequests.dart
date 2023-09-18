import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Tutor/tutor_home.dart';

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
                  usingIcon: false,
                  text: 'Make Lesson Offer:',
                  textsize: 18,
                  circle: false,
                  voidcallback: () {},
                ),
              )
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
                padding: const EdgeInsets.only(top: 25, bottom: 40),
                child: Column(children: [
                  Row(
                    children: [
                      NewButton(
                        buttonheight: 60,
                        buttonwidth: 50,
                        usingIcon: true,
                        icon: Icons.arrow_back,
                        textsize: 18,
                        circle: false,
                        voidcallback: () {},
                      ),
                      const Text('Make Lesson Offer',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),
                  Row(
                    children: [
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.calendar_month_outlined,
                                color: Colors.deepPurple, size: 110),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(
                              Icons.person_2_outlined,
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
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 25, right: 25, bottom: 10),
                            child: Text('Date',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Select Time',
                                textsize: 18,
                                circle: false,
                                voidcallback: () {},
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Student',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Enter Student Email',
                                textsize: 18,
                                circle: false,
                                voidcallback: () {},
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Subject',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Select Subject',
                                textsize: 18,
                                circle: false,
                                voidcallback: () {},
                              )),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: NewButton(
                      buttonheight: 60,
                      buttonwidth: 340,
                      usingIcon: false,
                      text: 'Confirm',
                      textsize: 18,
                      circle: false,
                      voidcallback: () {},
                    ),
                  )
                ]))));
  }
}
