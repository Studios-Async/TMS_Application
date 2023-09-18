import 'package:flutter/material.dart';
import 'package:tms/buttontemplate.dart';
import 'package:tms/general_screens/Admin/Utilities/account_widget.dart';
import 'package:tms/general_screens/Admin/Utilities/students_accounts.dart';
import 'package:tms/general_screens/Admin/Utilities/tutor_accounts.dart';

class AdminAccounts extends StatefulWidget {
  const AdminAccounts({Key? key}) : super(key: key);

  @override
  State<AdminAccounts> createState() => _AdminAccountsState();
}

class _AdminAccountsState extends State<AdminAccounts> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.05),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tutors \u2192",
                        style: TextStyle(
                          fontSize: screenWidth * 0.12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenWidth * 0.02,
                    horizontal: screenWidth * 0.01),
                child: const TutorAccountsList(),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.05),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Students \u2192",
                        style: TextStyle(
                          fontSize: screenWidth * 0.12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenWidth * 0.02,
                    horizontal: screenWidth * 0.01),
                child: const StudentAccountsList(),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: NewButton(
                  buttonheight: screenWidth * 0.2,
                  buttonwidth: screenWidth * 0.65,
                  usingIcon: false,
                  text: "Create New Account",
                  textsize: 100,
                  voidcallback: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
