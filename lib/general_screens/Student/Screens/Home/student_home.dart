import 'package:flutter/material.dart';
import 'package:tms/general_screens/Other/Utilities/notification_button.dart';
import 'package:tms/general_screens/Other/Utilities/sidemenu.dart';
import 'package:tms/general_screens/Student/Screens/Home/Utilities/student_calendar.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({Key? key}) : super(key: key);

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [SideMenu(), Spacer(), NotifButton()],
            ),
            const HomePageCalendar(),
          ],
        ),
      ),
    );
  }
}
