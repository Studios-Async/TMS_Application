import 'package:flutter/material.dart';

import '../../../../../../main.dart';

class SummaryContainer extends StatelessWidget {
  final String topText;
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final Color containerColor;
  final Color topTextColor; // Add a parameter for the color of the topText
  final Color
      bottomTextColor; // Add a parameter for the color of the bottomText
  final String bottomText;

  SummaryContainer({
    required this.topText,
    required this.iconData,
    this.iconColor = Colors.white,
    this.iconSize = 32.0,
    this.containerColor = Colors.black,
    this.topTextColor = Colors.white, // Initialize the topTextColor parameter
    this.bottomTextColor =
        Colors.white, // Initialize the bottomTextColor parameter
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 127, 71, 206),
        borderRadius: BorderRadius.circular(30.0),
      ),
      height: logicalHeight * 0.175,
      width: logicalWidth * 0.99,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: logicalWidth * 0.04,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: logicalHeight * 0.02),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                height: logicalHeight * 0.12,
                width: logicalWidth * 0.25,
                child: Icon(
                  iconData,
                  color: iconColor,
                  size: iconSize,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: logicalHeight * 0.02),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: logicalHeight * 0.045,
                  width: logicalWidth * 0.6,
                  child: Center(
                    child: Text(
                      topText,
                      style: TextStyle(
                        color: topTextColor, // Use topTextColor parameter
                        fontSize: logicalHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: logicalHeight * 0.009),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: logicalHeight * 0.07,
                  width: logicalWidth * 0.6,
                  child: Center(
                    child: Text(
                      bottomText,
                      style: TextStyle(
                        color: bottomTextColor, // Use bottomTextColor parameter
                        fontSize: logicalHeight * 0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
