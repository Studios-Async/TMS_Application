import 'package:flutter/material.dart';

class RowItems extends StatelessWidget {
  final IconData icon;
  final String text;

  const RowItems({super.key, required this.icon, required this.text});

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
                  padding: const EdgeInsets.all(5),
                                    ),
                   Icon(icon, size: 38.0),
                
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
