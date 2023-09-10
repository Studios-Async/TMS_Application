import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool?
      usingIcon; //bool value for if button will have icon or text, set to true or false then add text/icon as argument
  double buttonheight;
  double buttonwidth;
  double textsize;
  final voidcallback;
  NewButton(
      {super.key,
      required this.voidcallback,
      required this.buttonheight,
      required this.buttonwidth,
      required this.usingIcon,
      required this.textsize,
      this.icon,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonwidth,
        height: buttonheight,
        child: FloatingActionButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          onPressed: () {
            voidcallback;
          },
          backgroundColor: Colors.deepPurple,
          child: Center(
              child: usingIcon ==
                      false //if the button doesnt need an icon, there will be a text child
                  ? Text(
                      text!,
                      style: TextStyle(color: Colors.white, fontSize: textsize),
                    )
                  : Icon(
                      //if the button us using an icon, there will be an icon child
                      icon,
                      color: Colors.white,
                      size: textsize,
                    )),
        ));
  }
}
