import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const RowItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Adding a border
                borderRadius:
                    BorderRadius.circular(8.0), // Adding border radius
              ),
              child: Icon(icon, size: 58.0),
            ),
            const SizedBox(width: 16.0),
            Text(text, style: const TextStyle(fontSize: 22.0)),
          ],
        ),
      ),
    );
  }
}
