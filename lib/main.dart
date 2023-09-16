import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms/general_screens/Admin/Utilities/admin_navbar.dart';
import 'package:tms/general_screens/Tutor/tutor_profile.dart';
import 'package:tms/general_screens/profile%20page/subjects_page_tutor.dart';
import 'general_screens/Admin/admin_profile.dart';
import 'general_screens/profile page/subjects_page_student.dart';

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
      home: SubjectsPageTutor(),
    );
  }
}
