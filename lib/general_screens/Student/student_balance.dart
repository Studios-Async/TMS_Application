import 'package:flutter/material.dart';
import 'package:tms/buttontemplate.dart';

class LessonHistoryWidget extends StatelessWidget {
  final String subject;
  final double cost;
  const LessonHistoryWidget(
      {Key? key, required this.subject, required this.cost})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Row(
        children: [
          Text(
            subject,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15)),
          Text(cost.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 30))
        ],
      ),
    );
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
          const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 25),
            child: Text('NAME, your balance this month is: £---',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, bottom: 10),
            child: Text('Transactions: ',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Container(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const LessonHistoryWidget(subject: 'Maths', cost: 45);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: NewButton(
              voidcallback: null,
              buttonheight: 30,
              buttonwidth: 60,
              usingIcon: false,
              text: 'Pay',
            ),
          )
        ]),
      ),
    )));
  }
}
