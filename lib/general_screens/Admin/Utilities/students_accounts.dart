import 'package:flutter/material.dart';

import 'account_widget.dart';

class StudentAccountsList extends StatefulWidget {
  const StudentAccountsList({super.key});

  @override
  State<StudentAccountsList> createState() => _StudentAccountsListState();
}

class _StudentAccountsListState extends State<StudentAccountsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set the desired height for your horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:
            3, // Replace with the actual number of items you want to display.
        itemBuilder: (context, index) {
          return AccountWidget(name: (index + 1).toString());
        },
      ),
    );
  }
}
