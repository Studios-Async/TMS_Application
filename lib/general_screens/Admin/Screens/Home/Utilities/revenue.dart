import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

class Revenue extends StatefulWidget {
  const Revenue({super.key});

  @override
  State<Revenue> createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        height: screenWidth * 0.3, //Dimensions
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12), // Curved corner radius.
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              Container(
                // Dollar Icon
                decoration: BoxDecoration(
                  //White Border
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenWidth * 0.2, //Border Parameters
                width: screenWidth * 0.2,
                child: Icon(
                  Icons.attach_money,
                  size: screenWidth * 0.15,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Revenue",
                      style: TextStyle(
                          fontSize: screenWidth * 0.075,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20),
                        child: Text(
                          "£X",
                          style: TextStyle(
                            fontSize: screenWidth * 0.07,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // Unimplemented - likely to change ?
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                            size: screenWidth * 0.05,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "35%",
                              style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              //More details button
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: NewButton(
                  circle: false,
                  buttonheight: screenWidth * 0.08,
                  buttonwidth: screenWidth * 0.08,
                  usingIcon: true,
                  icon: Icons.arrow_right_alt_outlined,
                  textsize: 1,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
