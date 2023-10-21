import 'package:flutter/material.dart';
import 'package:tms/main.dart';

class ProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onPressed;

  ProfileButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: logicalHeight * 0.01,
        vertical: logicalWidth * 0.05,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0), // Rounded corners
        child: Material(
          elevation: 4,
          child: Container(
            width: logicalWidth * 0.85,
            height: logicalHeight * 0.1,
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .transparent, // Set the button's background to transparent
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Align children to the start
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: logicalHeight * 0.04,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: logicalHeight * 0.025,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
