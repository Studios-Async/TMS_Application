import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class TotalHours extends StatefulWidget {
  const TotalHours({super.key});

  @override
  State<TotalHours> createState() => _TotalHoursState();
}

class _TotalHoursState extends State<TotalHours> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12), // Curved corner radius.
        ),
        height: screenWidth * 0.25, // Container Dimensions
        width: screenWidth * 0.45,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container for chart icon.
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.14,
                height: screenWidth * 0.14,
                decoration: BoxDecoration(
                  // Icon border
                  border: Border.all(
                    color: Colors.white,
                    width: 3, // Icon border width.
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Icon border radius.
                ),
                child: Icon(
                  Icons.bar_chart, // Bar chart icon.
                  size: screenWidth * 0.12,
                ),
              ),
            ),
            const SizedBox(width: 8), // Space between icon and text.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.23,
                  child: const Text(
                    "Total Hours:", // Text label and details
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.23,
                  child: const Text(
                    "2.5k", // Total hours value.
                    style: TextStyle(
                      color: Colors.white, // Text color.
                      fontSize: 16, // Text font size.
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
