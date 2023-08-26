import 'package:flutter/material.dart';

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
        color: Colors.deepPurple,
        height: screenWidth * 0.25,
        width: screenWidth * 0.45,
      ),
    );
  }
}
