import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Tutor/tutor_home.dart';

class LessonRequest extends StatelessWidget {
  String? studentName;
  String? subject;
  String? time;

  LessonRequest(
      {super.key,
      required this.studentName,
      required this.subject,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.deepPurple),

      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text(studentName!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
              Text(subject!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
              Text(time! as String,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
              Padding(padding: EdgeInsets.all(10))
            ],
          ),
          Padding(padding: EdgeInsets.all(30)),
          Container(height: 80, width: 100, color: Colors.deepPurple, child: NewButton(onPressed: () {}, voidcallback: (){}, buttonheight: 15, buttonwidth: 30, usingIcon: false,text: 'Approve', circle: false, textsize: 4,  ))

          //approve button here
        ],
      ),
    );
  }
}

class SeeRequestsPageNew extends StatelessWidget {
  const SeeRequestsPageNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 25, bottom: 40),
            child: Column(
              children: [
                const Text('Your Lesson Requests:',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    bottom: 30,
                ),
                  child: NewButton(
                    buttonheight: 60,
                    buttonwidth: 340,   // Navigator.push(context, MaterialPageRoute(builder:  (context)=> MakeNewRequestsPage()));
                    usingIcon: false,
                    text: 'Make Lesson Offer:', textsize: 18, circle: false, voidcallback: (){}, onPressed:  (){Navigator.push(context, MaterialPageRoute(builder:  (context)=> MakeNewRequestsPage()));}
                  ),
                ),
              LessonRequest(studentName: 'Name', subject: 'Subject', time: '13:30')
            ],
          )),
    )));
  }
}




class MakeNewRequestsPage extends StatelessWidget {
  const MakeNewRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.only(top: 25, bottom: 40),
                child: Column(children: [
                  Row(
                    children: [
                      NewButton(
                        buttonheight: 60,
                        buttonwidth: 50,
                        usingIcon: true,
                        icon: Icons.arrow_back, textsize: 18, onPressed: () {  }, circle: false, voidcallback: () {  },
                      ),
                      const Text('Make Lesson Offer',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),
                  Row(
                    children: [
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.calendar_month_outlined,
                                color: Colors.deepPurple, size: 110),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Colors.deepPurple,
                              size: 110,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.subject_outlined,
                                color: Colors.deepPurple, size: 110),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 25, right: 25, bottom: 10),
                            child: Text('Date',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Select Time',
                                textsize: 18, onPressed: () {  }, circle: false, voidcallback: () {  },
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Student',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Enter Student Email',
                                textsize: 18, onPressed: () {  }, circle: false, voidcallback: () {  },
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Subject',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5),
                              child: NewButton(
                                buttonheight: 60,
                                buttonwidth: 200,
                                usingIcon: false,
                                text: 'Select Subject',
                                textsize: 18, onPressed: () {  }, circle: false, voidcallback: () {  },
                              )),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: NewButton(
                      buttonheight: 60,
                      buttonwidth: 340,
                      usingIcon: false,
                      text: 'Confirm',
                      textsize: 18, onPressed: () {  }, circle: false, voidcallback: () {  },
                    ),
                  )
                ]))));
  }
}



 

  