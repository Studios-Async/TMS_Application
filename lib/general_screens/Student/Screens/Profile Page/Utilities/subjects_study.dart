import 'package:flutter/material.dart';
import 'package:tms/main.dart';

import '../../../../../Utilities/buttontemplate.dart';

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({super.key});

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
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
                        Icons.arrow_back_ios, // iOS-style back button icon
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); // Pop the current screen
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
                        horizontal: 1,
                        vertical: 1,
                      ),
                      child: NewButton(
                        onPressed: () {
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
              padding: const EdgeInsets.only(
                  bottom: 35,
                  left: 20,
                  right: 20), // Only add padding to the bottom
              child: NewButton(
                onPressed: () {
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
