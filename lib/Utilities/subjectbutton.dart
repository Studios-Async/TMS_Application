import 'package:flutter/material.dart';

import '../main.dart';

class SubjectButton extends StatefulWidget {
  final String text;

  SubjectButton({required this.text});

  @override
  _SubjectButtonState createState() => _SubjectButtonState();
}

class _SubjectButtonState extends State<SubjectButton> {
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    double buttonSize =
        logicalWidth * 0.27; // Adjust the button size as desired

    return InkWell(
      onTap: () {
        setState(() {
          isButtonClicked = !isButtonClicked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: buttonSize,
          height: buttonSize, // Set the height to match the width
          decoration: BoxDecoration(
            shape: BoxShape.rectangle, // Use a rectangle shape
            borderRadius: BorderRadius.circular(30.0), // Rounded corners
            color: isButtonClicked ? Colors.red : Colors.deepPurple,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
