import 'package:flutter/material.dart';

class TopTutor extends StatefulWidget {
  const TopTutor({super.key});

  @override
  State<TopTutor> createState() => _TopTutorState();
}

class _TopTutorState extends State<TopTutor> {
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
