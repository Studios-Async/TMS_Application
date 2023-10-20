import 'package:flutter/material.dart';

import 'buttontemplate.dart';

class ProfileButton extends StatelessWidget {
  final IconData theicon; // Make it required
  final double logicalHeight;
  final double logicalWidth;
  final String buttonText;
  final void Function() onPressed;

  ProfileButton({
    required this.logicalHeight,
    required this.logicalWidth,
    required this.buttonText,
    required this.onPressed,
    required this.theicon, // Make the icon required
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: logicalHeight * 0.01,
        vertical: logicalWidth * 0.05,
      ),
      child: NewButton(
        buttonheight: logicalHeight * 0.1,
        buttonwidth: logicalWidth * 0.9,
        text: buttonText,
        textsize: logicalHeight * 0.02,
        circle: false,
        onPressed: onPressed,
        icon: theicon,
        usingIcon: null,
      ),
    );
  }
}
