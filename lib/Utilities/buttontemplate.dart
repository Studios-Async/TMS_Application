import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool? usingIcon; // bool value for if the button will have icon or text
  double buttonheight;
  double buttonwidth;
  final void Function() voidcallback; // Corrected the callback type
  bool circle; // New parameter to determine if the button should be circular
  double textsize;

  NewButton({
    Key? key,
    required this.voidcallback, // Corrected the callback type
    required this.buttonheight,
    required this.buttonwidth,
    required this.usingIcon,
    this.icon,
    this.text,
    required this.circle, // Add a parameter to specify if the button should be circular
    required this.textsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonwidth,
      height: buttonheight,
      child: FloatingActionButton(
        shape: circle // Use a circular shape if circle is true
            ? const CircleBorder(side: BorderSide.none) // Add CircleBorder
            : const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
        onPressed: voidcallback, // Invoke the callback function here
        backgroundColor: Colors.deepPurple,
        child: Center(
          child: usingIcon == false
              ? Text(
                  text!,
                  style: TextStyle(color: Colors.white, fontSize: textsize),
                )
              : Icon(
                  icon,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}
