import 'package:flutter/material.dart';
import 'package:tms/Utilities/notification_button.dart';
import 'package:tms/Utilities/sidemenu.dart';
import 'package:tms/Utilities/student_calendar.dart';

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
