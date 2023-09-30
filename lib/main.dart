import 'dart:html';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms/general_screens/Admin/Utilities/admin_navbar.dart';
import 'package:tms/general_screens/Admin/admin_accounts.dart';
import 'package:tms/general_screens/Student/Utilities/student_navbar.dart';
import 'package:tms/general_screens/Student/student_balance.dart';
import 'package:tms/general_screens/Student/this_months_learning.dart';
import 'package:tms/general_screens/Student/welldone_page.dart';
import 'package:tms/general_screens/Tutor/Utilities/tutor_navbar.dart';
import 'package:tms/general_screens/Tutor/tutor_profile.dart';
import 'package:tms/general_screens/Tutor/tutor_seerequests.dart';
import 'package:tms/general_screens/profile%20page/subjects_page_tutor.dart';
import 'general_screens/Admin/admin_profile.dart';
import 'general_screens/profile page/subjects_page_student.dart';
import 'general_screens/Admin/Utilities/create_new_acc.dart';

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
    // Get the device pixel ratio
    var pixelRatio = MediaQuery.of(context).devicePixelRatio;

// Get the logical screen size
    var logicalScreenSize = MediaQuery.of(context).size;
    double logicalWidth = logicalScreenSize.width;
    double logicalHeight = logicalScreenSize.height;

    return const MaterialApp(
      debugShowCheckedModeBanner: false, //dont show banner in corner
      home: CreateAccountPage(),
    );
  }
}
