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
      height: 200, // List Height
      child: ListView.builder(
        scrollDirection: Axis.horizontal, //Scroll direction
        itemCount: 4, //UNIMPLEMENTED ONWARDS
        itemBuilder: (context, index) {
          return AccountWidget(name: (index + 1).toString());
        },
      ),
    );
  }
}
