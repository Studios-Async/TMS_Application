import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/main.dart';

import 'Utilities/students_accounts.dart';
import 'Utilities/tutor_accounts.dart';

class AdminAccounts extends StatefulWidget {
  const AdminAccounts({Key? key}) : super(key: key);

  @override
  State<AdminAccounts> createState() => _AdminAccountsState();
}

class _AdminAccountsState extends State<AdminAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: logicalHeight * 0.05),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tutors \u2192",
                        style: TextStyle(
                          fontSize: logicalWidth * 0.075,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: logicalWidth * 0.02,
                    horizontal: logicalWidth * 0.01),
                child: TutorAccountsList(),
              ),
              SizedBox(
                height: logicalHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(top: logicalWidth * 0.05),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Students \u2192",
                        style: TextStyle(
                          fontSize: logicalWidth * 0.075,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: logicalWidth * 0.02,
                    horizontal: logicalWidth * 0.01),
                child: StudentAccountsList(),
              ),
              SizedBox(
                height: logicalHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.all(logicalWidth * 0.05),
                child: NewButton(
                  circle: false,
                  buttonheight: logicalHeight * 0.1,
                  buttonwidth: logicalWidth * 0.9,
                  usingIcon: false,
                  text: "Create New Account",
                  textsize: logicalHeight * 0.9,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
