import 'package:flutter/material.dart';

class newbutton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool?
      usingIcon; //bool value for if button will have icon or text, set to true or false then add text/icon as argument
  double buttonheight;
  double buttonwidth;
  final voidcallback;
  newbutton(
      {super.key,
      required this.voidcallback,
      required this.buttonheight,
      required this.buttonwidth,
      required this.usingIcon,
      this.icon,
      this.text});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      onPressed: voidcallback,
      backgroundColor: Colors.deepPurple,
      child: Center(
          child: usingIcon == false
              ? Text(
                  text!,
                  style: const TextStyle(color: Colors.white),
                )
              : Icon(
                  icon,
                  color: Colors.white,
                )),
    );
  }
}
