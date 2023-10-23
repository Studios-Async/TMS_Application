import 'package:flutter/material.dart';
import 'package:tms/general_screens/Tutor/Utilities/rowitem.dart';
import 'package:tms/main.dart';

class ThisMonthsTutoringPage extends StatelessWidget {
  const ThisMonthsTutoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double logicalHeight = MediaQuery.of(context).size.height;
    double logicalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Container(
                            height: logicalHeight * 0.1,
                            color: Colors.deepPurple,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15, bottom: 20, right: 15, top: 20),
                              child: Text(
                                "Monthly Summary",
                                style: TextStyle(
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                height: logicalHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const RowItems(
                  icon: Icons.access_time,
                  text: 'Total hours: ',
                ),
              ),
            ),
            SizedBox(
              height: logicalWidth * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                height: logicalHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const RowItems(
                  icon: Icons.thumb_up,
                  text: "Your Top student was:",
                ),
              ),
            ),
            SizedBox(
              height: logicalWidth * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: logicalHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const RowItems(
                  icon: Icons.star_rounded,
                  text: 'Overall feedback: ',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
