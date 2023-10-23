import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const RowItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.01),
            child: Row(
              children: [
                Container(
                  width: 70.0, // Adjust the width as needed
                  height: 70.0, // Adjust the height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepPurple, // Border color
                      width: 5.0, // Border width
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.purple, // Start color
                        Color.fromARGB(255, 218, 158, 228), // End color
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      size: 50.0,
                      color: Colors.deepPurple, // Adjust the icon color
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Text(text, style: const TextStyle(fontSize: 20.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
