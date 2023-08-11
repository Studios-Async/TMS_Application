import 'package:flutter/material.dart';
import 'package:tms/Utilities/notification_button.dart';
import 'package:tms/Utilities/student_calendar.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({super.key});

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: NotifButton(),
              ),
            ],
          ),
          StudentCalendar()
        ]),
      ),
    );
  }
}
