import 'package:flutter/material.dart';

class Notch extends StatelessWidget {
  final String title;
  final bool showBackButton;

  const Notch({
    Key? key,
    required this.title,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double logicalHeight = MediaQuery.of(context).size.height;
    double logicalWidth = MediaQuery.of(context).size.width;

    return Container(
      height: logicalHeight * 0.14,
      width: logicalWidth * 0.998,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Center(
        child: SafeArea(
          child: Stack(
            children: [
              if (showBackButton)
                Positioned(
                  left: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: logicalWidth * 0.075,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
