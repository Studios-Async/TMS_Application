import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms/general_screens/Admin/Utilities/admin_navbar.dart';
import 'package:tms/general_screens/Admin/Screens/Accounts/admin_accounts.dart';
import 'package:tms/general_screens/Tutor/Add%20Lesson/tutor_lesson_request.dart';
import 'package:tms/general_screens/Student/Utilities/student_navbar.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/Utilities/student_balance.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/Utilities/this_months_learning.dart';
import 'package:tms/general_screens/Student/Screens/Other/welldone_page.dart';
import 'package:tms/general_screens/Tutor/Utilities/tutor_navbar.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/tutor_profile.dart';
import 'package:tms/general_screens/Tutor/Add%20Lesson/tutor_seerequests.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/subjects_teach.dart';
import 'package:tms/general_screens/Student/Screens/Add%20Lesson/student_make_lessonreq.dart';
import 'general_screens/Admin/Screens/Profile Page/admin_profile.dart';
import 'general_screens/Student/Screens/Profile Page/Utilities/subjects_study.dart';
import 'general_screens/Admin/Screens/Accounts/Utilities/create_new_acc.dart';

Future main() async {
  //add both to connect to Firebase for authentication services
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

///Root of the TMS application. Launched when app is loaded
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //dont show banner in corner
      home: StudentNavBar(),
    );
  }
}

var pixelRatio = window.devicePixelRatio;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
double logicalWidth = logicalScreenSize.width;
double logicalHeight = logicalScreenSize.height;
