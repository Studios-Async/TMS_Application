import 'package:flutter/material.dart';

class TotalUsers extends StatefulWidget {
  const TotalUsers({super.key});

  @override
  State<TotalUsers> createState() => _TotalUsersState();
}

class _TotalUsersState extends State<TotalUsers> {
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
