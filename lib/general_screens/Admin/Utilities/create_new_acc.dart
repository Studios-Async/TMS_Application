import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() =>  CreateAccount();
}



class CreateAccount extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.only(top: 25, bottom: 40),
                child: Column(children: [
                  const Text('Create New Account',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  Row(
                    children: [
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.man_4_outlined,
                                color: Colors.deepPurple, size: 110),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(
                              Icons.perm_identity,
                              color: Colors.deepPurple,
                              size: 110,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: Icon(Icons.email,
                                color: Colors.deepPurple, size: 110),
                          )
                        ],
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 25, right: 25, bottom: 10),
                            child: Text('Account Type',
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
                                text: 'Student/Tutor', onPressed: () {  }, textsize: 10, circle: false, voidcallback: () {  },
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Account Name',
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
                                text: 'Firstname Surname', onPressed: () {  }, textsize: 10, circle: false, voidcallback: () {  },
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 50, left: 25, right: 25, bottom: 10),
                            child: Text('Email',
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
                                text: 'Email Address', onPressed: () {  }, textsize: 10, circle: false, voidcallback: () {  },
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
                        text: 'Confirm', onPressed: () {  }, textsize: 10, circle: false, voidcallback: () {  },),
                  )
                ]))));
  }
}
