import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool? usingIcon;
  double buttonheight;
  double buttonwidth;
  double textsize;
  bool circle; // Parameter to determine if the button should be circular
  VoidCallback? onPressed; // Use VoidCallback for onPressed

  NewButton({
    Key? key,
    required this.buttonheight,
    required this.buttonwidth,
    required this.usingIcon,
    this.icon,
    this.text,
    required this.textsize,
    required this.circle, // Add the parameter to determine if the button should be circular
    required this.onPressed, // Remove voidcallback and use onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonwidth,
      height: buttonheight,
      child: ElevatedButton(
        onPressed: onPressed, // Use the provided onPressed callback
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          shape: circle // Use a circular shape if circle is true
              ? const CircleBorder(side: BorderSide.none) // Add CircleBorder
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (usingIcon == true)
              Icon(
                icon,
                color: Colors.white,
                size: textsize,
              ),
            if (usingIcon == true && text != null) SizedBox(width: 8.0),
            if (text != null)
              Flexible(
                child: Text(
                  text!,
                  style: TextStyle(color: Colors.white, fontSize: textsize),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
