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
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12), // Curved corner radius.
        ),
        height: screenWidth * 0.25,
        width: screenWidth * 0.45,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.14,
                height: screenWidth * 0.14,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/icons/mortarboard.png",
                  width: screenWidth * 0.12,
                  height: screenWidth * 0.12,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.23, // Adjust the width
                  child: const Text(
                    "Top Tutor:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.23, // Adjust the width
                  child: const Text(
                    "Arham K",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
