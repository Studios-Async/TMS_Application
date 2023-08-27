import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms/general_screens/Admin/Home%20Utilities/revenue.dart';
import 'package:tms/general_screens/Admin/Utilities/admin_navbar.dart';
import 'package:tms/general_screens/Student/Utilities/student_navbar.dart';
import 'package:tms/general_screens/Student/this_months_learning.dart';
import 'package:tms/general_screens/Tutor/Utilities/tutor_navbar.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false, //dont show banner in corner
      home: StudentNavBar(),
    );
  }
}
