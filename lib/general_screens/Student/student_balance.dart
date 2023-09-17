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
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), child:     Container(
      color: Colors.deepPurple,
      child: Row(
        children: [
          const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15)),
          Text(subject + '          '+  cost.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 30))
        ],
      ),
    ));
  }
}

class StudentBalance extends StatefulWidget {
  const StudentBalance({super.key});

  @override
  State<StudentBalance> createState() => _StudentBalance();
}

class _StudentBalance extends State<StudentBalance> {
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
              height: 300,
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
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: NewButton(
              voidcallback: null,
              buttonheight: 60,
              buttonwidth: 100,
              usingIcon: false,
              text: 'Pay',
            ),
          )
        ]),
      ),
    )));
  }
}
