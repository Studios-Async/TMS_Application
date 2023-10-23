import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/Utilities/More%20Utilities/subjectdropdown.dart';

import '../../../../../Utilities/subjectbutton.dart';
import '../../../../../main.dart';

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({Key? key}) : super(key: key);

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  String selectedChoice = 'Level'; // Initial choice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const Text(
                      "Subjects you Study",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ChooseSubject(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: logicalWidth * 0.95,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  border: Border.all(
                      color: Colors.black, width: 2), // Add a black outline
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SubjectButton(
                          text: "Subject 1",
                        ),
                        SubjectButton(
                          text: "Subject 1",
                        ),
                        SubjectButton(
                          text: "Subject 1",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SubjectButton(
                          text: "Subject 2",
                        ),
                        SubjectButton(
                          text: "Subject 2",
                        ),
                        SubjectButton(
                          text: "Subject 2",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SubjectButton(
                          text: "Subject 3",
                        ),
                        SubjectButton(
                          text: "Subject 3",
                        ),
                        SubjectButton(
                          text: "Subject 3",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SubjectButton(
                          text: "Subject 3",
                        ),
                        SubjectButton(
                          text: "Subject 3",
                        ),
                        SubjectButton(
                          text: "Subject 3",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: NewButton(
                    buttonheight: logicalHeight * 0.08,
                    buttonwidth: logicalWidth * 0.95,
                    usingIcon: false,
                    textsize: logicalHeight * 0.05,
                    circle: false,
                    text: "Save",
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}