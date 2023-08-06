import 'package:flutter/material.dart';

class newbutton extends StatelessWidget {
  final String text;
  final IconData icon;
  double buttonheight;
  double buttonwidth;
  newbutton(
      {super.key,
      required this.text,
      required this.icon,
      required this.buttonheight,
      required this.buttonwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonwidth,
      height: buttonheight,
      color: Colors.indigo,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.indigoAccent)),
      child: Center(child: Text(text)),
    );
  }
}
