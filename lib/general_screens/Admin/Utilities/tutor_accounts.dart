import 'package:flutter/material.dart';

import 'account_widget.dart';

class TutorAccountsList extends StatefulWidget {
  const TutorAccountsList({super.key});

  @override
  State<TutorAccountsList> createState() => _TutorAccountsListState();
}

class _TutorAccountsListState extends State<TutorAccountsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set the desired height for your horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:
            4, // Replace with the actual number of items you want to display.
        itemBuilder: (context, index) {
          return AccountWidget(name: (index + 1).toString());
        },
      ),
    );
  }
}
