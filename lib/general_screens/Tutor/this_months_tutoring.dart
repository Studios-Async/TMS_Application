import 'package:flutter/material.dart';
import 'package:tms/general_screens/Tutor/Utilities/rowitem.dart';

class ThisMonthsTutoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.01),
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          child: const Text(
                            "Monthly Summary",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18.0),
              child: const Text(
                'This month, you have done:',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
            const RowItems(
                icon: Icons.access_time, text: 'Total hours: _______'),
            SizedBox(
              height: screenWidth * 0.2,
            ),
            const RowItems(
                icon: Icons.thumb_up, text: 'Your top Student was: ____'),
            SizedBox(
              height: screenWidth * 0.2,
            ),
            const RowItems(
                icon: Icons.star_rounded, text: 'Overall feedback: _______'),
            const SizedBox(height: 50.0),
            TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/feedback');
              },
              child: const Text('Go to Feedback Page'),
            ),
          ],
        ),
      ),
    );
  }
}
// IconButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       icon: Icon(Icons.arrow_back_ios),
//                     ),