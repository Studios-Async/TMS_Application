import 'package:flutter/material.dart';
import 'package:tms/Utilities/notification_button.dart';
import 'package:tms/Utilities/sidemenu.dart';
import 'package:tms/Utilities/student_calendar.dart';
import 'package:tms/Utilities/navbar.dart'; // Import the NavBar class

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
              children: [SideMenu(), Spacer(), NotifButton()],
            ),
            StudentCalendar(),
          ],
        ),
      ),
      // bottomNavigationBar: NavBar()
    );
  }
}
