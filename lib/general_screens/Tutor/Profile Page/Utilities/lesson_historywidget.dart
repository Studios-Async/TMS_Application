import 'package:flutter/material.dart';
import 'package:tms/main.dart';

class LessonHistoryWidget extends StatelessWidget {
  final String subject;
  final double pay;
  const LessonHistoryWidget(
      {Key? key, required this.subject, required this.pay})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Container(
          height: logicalHeight * 0.06,
          width: logicalWidth * 0.9,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12), // Curved corner radius.
          ),
          child: Row(
            children: [
              Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 15)),
              Text(subject + '          ' + pay.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 30))
            ],
          ),
        ));
  }
}
