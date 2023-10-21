import 'package:flutter/material.dart';
import 'package:tms/main.dart';

import '../../../../Utilities/buttontemplate.dart';
import '../../../../Utilities/subjectbutton.dart';
import '../../../Student/Screens/Profile Page/Utilities/More Utilities/subjectdropdown.dart';

class SubjectsPageTutor extends StatefulWidget {
  const SubjectsPageTutor({super.key});

  @override
  State<SubjectsPageTutor> createState() => _SubjectsPageTutorState();
}

class _SubjectsPageTutorState extends State<SubjectsPageTutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: logicalHeight * 0.1,
              width: logicalWidth * 0.975,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Subjects you Teach",
                      style: TextStyle(
                        fontSize: logicalWidth * 0.075,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
