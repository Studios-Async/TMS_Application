import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/Utilities/student_balance.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/this_months_tutoring.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/subjects_teach.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/tutor_earnings.dart';
import 'package:tms/main.dart';

class TutorProfilePage extends StatefulWidget {
  const TutorProfilePage({super.key});

  @override
  State<TutorProfilePage> createState() => _TutorProfilePageState();
}

class _TutorProfilePageState extends State<TutorProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: logicalWidth * 0.45,
                      height: logicalWidth * 0.45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: const Center(
                        child: Text(
                          'Profile Pic',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Tutor Name",
                              style: TextStyle(
                                  fontSize: logicalHeight * 0.03,
                                  color: Colors.white),
                            ),
                            Text(
                              "@Email",
                              style: TextStyle(
                                  fontSize: logicalHeight * 0.02,
                                  color: Colors.grey.shade700),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  width: logicalWidth * 0.97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      ProfileButton(
                        logicalHeight: logicalHeight,
                        logicalWidth: logicalWidth,
                        buttonText: "Subjects you teach",
                        theicon: Icons.add,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubjectsPageTutor(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final IconData? theicon;
  final double logicalHeight;
  final double logicalWidth;
  final String buttonText;
  final void Function() onPressed;

  ProfileButton({
    required this.logicalHeight,
    required this.logicalWidth,
    required this.buttonText,
    required this.onPressed,
    required this.theicon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: logicalHeight * 0.01,
        vertical: logicalWidth * 0.05,
      ),
      child: NewButton(
        buttonheight: logicalHeight * 0.1,
        buttonwidth: logicalWidth * 0.9,
        text: buttonText,
        textsize: logicalHeight * 0.02,
        circle: false,
        onPressed: onPressed,
        icon: theicon,
      ),
    );
  }
}






// child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: screenWidth * 0.5,
//                   height: screenWidth * 0.5,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.grey,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'Profile Pic',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//               const Text(
//                 'Tutor Name',
//                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.01,
//                           vertical: screenWidth * 0.05),
//                       child: NewButton(
//                         buttonheight: screenWidth * 0.25,
//                         buttonwidth: screenWidth * 0.95,
//                         usingIcon: false,
//                         text: "Subjects you teach",
//                         textsize: screenWidth * 0.06,
//                         circle: false,
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => SubjectsPageTutor(),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.01,
//                           vertical: screenWidth * 0.05),
//                       child: NewButton(
//                         circle: false,
//                         buttonheight: screenWidth * 0.25,
//                         buttonwidth: screenWidth * 0.95,
//                         usingIcon: false,
//                         text: "This Month's Teaching",
//                         textsize: screenWidth * 0.06,
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => ThisMonthsTutoringPage(),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.01,
//                           vertical: screenWidth * 0.05),
//                       child: NewButton(
//                         circle: false,
//                         buttonheight: screenWidth * 0.25,
//                         buttonwidth: screenWidth * 0.95,
//                         usingIcon: false,
//                         text: "Current Earnings",
//                         textsize: screenWidth * 0.06,
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => (TutorEarnings()),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),

