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
    // Calculate the size of the square container
    double containerSize = logicalWidth * 0.275; // Adjust the size as desired

    return InkWell(
      onTap: () {
        setState(() {
          isButtonClicked = !isButtonClicked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: containerSize,
          height: containerSize, // Set the height to match the width
          decoration: BoxDecoration(
            shape: BoxShape.circle,
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
