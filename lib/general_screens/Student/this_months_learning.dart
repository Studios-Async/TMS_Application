import 'package:flutter/material.dart';

import 'Utilities/rowitem.dart';

class ThisMonthsLearningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Monthly Summary',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              'This month, you have done:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          const RowItem(icon: Icons.access_time, text: 'Total hours: _______'),
          const SizedBox(
            height: 100,
          ),
          const RowItem(
              icon: Icons.thumb_up, text: 'Your top tutor was: _______'),
          const SizedBox(
            height: 100,
          ),
          const RowItem(
              icon: Icons.star_rounded, text: 'Overall feedback: _______'),
          const SizedBox(height: 50.0),
          TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/feedback');
            },
            child: const Text('Go to Feedback Page'),
          ),
        ],
      ),
    );
  }
}
