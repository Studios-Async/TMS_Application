import 'package:flutter/material.dart';

import '../../Utilities/buttontemplate.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: const Text(
                'Subjects You Study',
                style: TextStyle(
                  fontSize: 38, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 columns
                  mainAxisSpacing: 8.0, // Space between rows
                  crossAxisSpacing: 8.0, // Space between columns
                ),
                itemCount:
                    12, // Change this to the number of subjects you want to display
                itemBuilder: (context, index) {
                  return NewButton(
                    voidcallback: () {
                      // Add functionality for each subject button here
                    },
                    buttonheight: double.infinity,
                    buttonwidth: double.infinity,
                    usingIcon: false,
                    text: 'Subject ${index + 1}',
                    textsize: 16,
                    circle: true, // Make the button circular
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NewButton(
                voidcallback: () {
                  // Add save functionality here
                },
                buttonheight: 60, // Adjust the height as needed
                buttonwidth: double.infinity, // Fill the width of the screen
                usingIcon: false,
                text: "Save",
                textsize: 16, circle: false, // Adjust text size as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
