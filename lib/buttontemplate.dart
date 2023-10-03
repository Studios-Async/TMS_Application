import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool? usingIcon;
  double buttonheight;
  double buttonwidth;
  final void Function() voidcallback;
  double textsize;

  NewButton({
    Key? key,
    required this.buttonheight,
    required this.voidcallback,
    required this.buttonwidth,
    required this.usingIcon,
    this.icon,
    this.text,
    required this.textsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonwidth,
      height: buttonheight,
      child: ElevatedButton(
        onPressed: voidcallback,
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the radius as needed
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (usingIcon == true) // Only show the icon if usingIcon is true
              Icon(
                icon,
                color: Colors.white,
                size: textsize,
              ),
            if (usingIcon == true &&
                text !=
                    null) // Add some spacing if both icon and text are present
              SizedBox(width: 8.0),
            if (text != null)
              Flexible(
                // Use Flexible to allow text to wrap
                child: Text(
                  text!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
