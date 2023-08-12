import 'package:flutter/material.dart';
import 'package:tms/Utilities/notifs.dart';

class NotifButton extends StatefulWidget {
  const NotifButton({Key? key}) : super(key: key);

  @override
  State<NotifButton> createState() => _NotifButtonState();
}

class _NotifButtonState extends State<NotifButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.notifications),
      iconSize: 30,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Notifications()));
      },
    );
  }
}
