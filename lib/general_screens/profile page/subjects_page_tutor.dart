import 'package:flutter/material.dart';
import 'package:tms/main.dart';

import '../../Utilities/buttontemplate.dart';

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
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                'Subjects You Teach',
                style: TextStyle(
                  fontSize:
                      logicalWidth * 0.08, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 3 columns
                    mainAxisSpacing: 8.0, // Space between rows
                    crossAxisSpacing: 8.0, // Space between columns
                  ),
                  itemCount:
                      12, // Change this to the number of subjects you want to display
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      child: NewButton(
                        voidcallback: () {
                          // Add functionality for each subject button here
                        },
                        buttonheight: logicalHeight * 0.02,
                        buttonwidth: logicalWidth * 0.01,
                        usingIcon: false,
                        text: 'Subject ${index + 1}',
                        textsize: logicalWidth * 0.04,
                        circle: true, // Make the button circular
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 55), // Increase vertical padding
              child: NewButton(
                voidcallback: () {
                  // Add save functionality here
                },
                buttonheight: logicalHeight * 0.09,
                buttonwidth: double.infinity,
                usingIcon: false,
                text: "Save",
                textsize: logicalHeight * 0.03,
                circle: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
