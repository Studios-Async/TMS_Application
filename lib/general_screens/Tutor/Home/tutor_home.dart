import 'package:flutter/material.dart';
import 'package:tms/general_screens/Other/Utilities/notification_button.dart';
import 'package:tms/general_screens/Other/Utilities/sidemenu.dart';
import 'package:tms/general_screens/Student/Screens/Home/Utilities/student_calendar.dart';

class TutorHome extends StatefulWidget {
  const TutorHome({Key? key}) : super(key: key);

  @override
  State<TutorHome> createState() => _TutorHomeState();
}

class _TutorHomeState extends State<TutorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [SideMenu()],
            ),
            const HomePageCalendar(),
          ],
        ),
      ),
    );
  }
}
