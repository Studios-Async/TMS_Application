import 'package:flutter/material.dart';

class SubjectsStudyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects You Study'),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return CircleItem(label: 'Sub ${index + 1}');
          },
        ),
      ),
    );
  }
}

class CircleItem extends StatelessWidget {
  final String label;

  const CircleItem({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue, // Customize circle color as needed
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
