import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tms/Authentication/login_page.dart';
import 'package:tms/general_screens/Admin/Screens/Home/admin_home.dart';
import 'package:tms/general_screens/Student/Utilities/student_navbar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AdminHome();
          } else {
            print('no');
            return LoginPage();
          }
        },
      ),
    );
  }
}
