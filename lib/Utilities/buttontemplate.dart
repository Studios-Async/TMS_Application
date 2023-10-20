import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double buttonheight;
  final double buttonwidth;
  final double textsize;
  final bool circle;
  final VoidCallback? onPressed;

  NewButton({
    Key? key,
    required this.buttonheight,
    required this.buttonwidth,
    this.icon,
    this.text,
    required this.textsize,
    required this.circle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonwidth,
      height: buttonheight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          shape: circle
              ? const CircleBorder()
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null)
              Icon(
                icon,
                color: Colors.white,
                size: textsize,
              ),
            if (icon != null && text != null) const SizedBox(width: 8.0),
            if (text != null)
              Text(
                text!,
                style: TextStyle(color: Colors.white, fontSize: textsize),
              ),
          ],
        ),
      ),
    );
  }
}
