import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool? usingIcon;
  double buttonheight;
  double buttonwidth;
  final void Function() voidcallback;
  bool circle;
  double textsize;

  NewButton({
    Key? key,
    required this.voidcallback,
    required this.buttonheight,
    required this.buttonwidth,
    required this.usingIcon,
    this.icon,
    this.text,
    required this.circle,
    required this.textsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonwidth,
      height: buttonheight,
      child: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        onPressed: voidcallback,
        backgroundColor: Colors.deepPurple,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: circle ? buttonheight / 2.0 : 0, // Make it circular if circle is true
          child: Center(
            child: usingIcon == false
                ? Text(
                    text!,
                    style: const TextStyle(color: Colors.white),
                  )
                : Icon(
                    icon,
                    color: Colors.white,
                  ),
          ),
        ),
      ),
    );
  }
}
