import 'package:flutter/material.dart';
import 'package:tms/main.dart';

class ChooseSubject extends StatefulWidget {
  const ChooseSubject({Key? key}) : super(key: key);

  @override
  State<ChooseSubject> createState() => _ChooseSubjectState();
}

class _ChooseSubjectState extends State<ChooseSubject> {
  String selectedChoice = 'GCSE'; // Initial choice

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: logicalWidth * 0.02, vertical: logicalHeight * 0.005),
      child: Container(
        width: logicalWidth * 0.4, // Set your desired width here
        child: DropdownButtonFormField<String>(
          isExpanded: false, // Make the dropdown button not expanded
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300, // Background color of the dropdown
            contentPadding: const EdgeInsets.symmetric(
                vertical: 15, horizontal: 20), // Adjust padding
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20), // Rounded corners
              borderSide: const BorderSide(
                  color: Colors.black, width: 2), // Border color and width
            ),
          ),
          value: selectedChoice,
          onChanged: (String? newValue) {
            setState(() {
              selectedChoice = newValue!;
            });
          },
          items: <String>['GCSE', 'A Level']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 18, // Adjust the font size as desired
                  color: Colors.black, // Adjust the text color as desired
                ),
              ),
            );
          }).toList(),
          icon: const Icon(
            Icons.arrow_drop_down, // You can use a different icon if you prefer
            size: 30, // Adjust the icon size as desired
            color: Colors.black, // Adjust the icon color as desired
          ),
          style: const TextStyle(
            fontSize: 30, // Adjust the overall style as desired
            color: Colors.black, // Adjust the overall text color as desired
          ),
        ),
      ),
    );
  }
}
