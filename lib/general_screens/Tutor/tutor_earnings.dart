import 'package:flutter/material.dart';

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
          color: Colors.deepPurple,
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

class TutorEarnings extends StatefulWidget {
  const TutorEarnings({super.key});

  @override
  State<TutorEarnings> createState() => _TutorEarnings();
}

class _TutorEarnings extends State<TutorEarnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 40),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 15),
            child: Text('NAME, your earnings this month are: £---',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 10),
            child: Text('History: ',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return LessonHistoryWidget(subject: 'Maths', pay: 45);
                },
              ),
            ),
          )
        ]),
      ),
    )));
  }
}