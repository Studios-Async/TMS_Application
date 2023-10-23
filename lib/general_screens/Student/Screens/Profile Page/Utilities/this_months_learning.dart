import 'package:flutter/material.dart';
import 'package:tms/Utilities/header.dart';
import 'package:tms/Utilities/rowitem.dart';

import '../../../../../main.dart';
import 'More Utilities/summarywidget.dart';

class ThisMonthsLearningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              HeaderContainer(headerText: "Monthly Summary"),
              SizedBox(
                height: logicalHeight * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: logicalWidth * 0.01,
                    vertical: logicalWidth * 0.06),
                child: SummaryContainer(
                  iconData: Icons.timer,
                  iconColor: Colors.black,
                  iconSize: logicalWidth * 0.175,
                  containerColor: Colors.grey.shade500,
                  topTextColor: Colors.white,
                  bottomTextColor: Colors.black,
                  topText: 'Total Hours:',
                  bottomText: '547h 30min',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: logicalWidth * 0.01,
                    vertical: logicalWidth * 0.06),
                child: SummaryContainer(
                  iconData: Icons.thumb_up,
                  iconColor: Colors.black,
                  iconSize: logicalWidth * 0.175,
                  containerColor: Colors.grey.shade500,
                  topTextColor: Colors.white,
                  bottomTextColor: Colors.black,
                  topText: 'Top Tutor:',
                  bottomText: 'Arham Khan',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: logicalWidth * 0.01,
                    vertical: logicalWidth * 0.06),
                child: SummaryContainer(
                  iconData: Icons.star_rounded,
                  iconColor: Colors.black,
                  iconSize: logicalWidth * 0.2,
                  containerColor: Colors.grey.shade500,
                  topTextColor: Colors.white,
                  bottomTextColor: Colors.black,
                  topText: 'Overall Feedback:',
                  bottomText: 'Positive',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
