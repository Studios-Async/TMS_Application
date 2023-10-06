import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final String name;

  const AccountWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
      child: Container(
        width: screenWidth * 0.4, //Width Parameters
        height: screenWidth * 0.46, // Height Parameters
        decoration: BoxDecoration(
          color: Colors.grey.shade500, // Container Background colour
          borderRadius: BorderRadius.circular(10.0), // Container radius
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/defaultpfp.png'),
                backgroundColor:
                    Colors.grey.shade200, // Circle Background colour
                radius: 77, //Circle Dimensions
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 25, // Text Size
                fontWeight: FontWeight.bold, //Text Style
              ),
            ),
          ],
        ),
      ),
    );
  }
}
