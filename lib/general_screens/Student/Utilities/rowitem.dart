import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const RowItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 58.0),
          const SizedBox(width: 20.0),
          Text(text, style: const TextStyle(fontSize: 20.0)),
        ],
      ),
    );
  }
}
