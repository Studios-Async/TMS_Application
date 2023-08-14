import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms/Utilities/navbar.dart';
import 'package:tms/general_screens/login_page.dart';
import 'package:tms/general_screens/student_home.dart';
import 'package:tms/general_screens/welldone_page.dart';

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
      home: StudentHome(),
    );
  }
}
