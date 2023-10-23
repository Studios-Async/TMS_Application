import 'package:flutter/material.dart';
import 'package:tms/Utilities/rowitem.dart';

class ThisMonthsTutoringPage extends StatelessWidget {
  const ThisMonthsTutoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double logicalHeight = MediaQuery.of(context).size.height;
    double logicalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: logicalHeight * 0.15,
            width: logicalWidth * 0.999,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade300,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Center(
              child: SafeArea(
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "   Monthly Summary",
                      style: TextStyle(
                        fontSize: logicalWidth * 0.075,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: logicalHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const RowItem(
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
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const RowItem(
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
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const RowItem(
                  icon: Icons.star_rounded,
                  
                  

                  text: 'Overall feedback: ',
                ),
              ),
            ),
          ],
        ),
    );
  }
}

