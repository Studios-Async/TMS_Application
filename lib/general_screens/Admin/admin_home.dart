import 'package:flutter/material.dart';
import 'package:tms/Utilities/buttontemplate.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: 2), // Add border
                    borderRadius:
                        BorderRadius.circular(10), // Add border radius
                  ),
                  child: const Text(
                    "Dashboard",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Page Analytics:",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: NewButton(
                  voidcallback: null,
                  buttonheight: screenWidth * 0.4,
                  buttonwidth: screenWidth * 0.9,
                  usingIcon: false,
                  text: "Test",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: NewButton(
                          voidcallback: null,
                          buttonheight: screenWidth * 0.35,
                          buttonwidth: screenWidth * 0.45,
                          usingIcon: false,
                          text: "Test",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: NewButton(
                          voidcallback: null,
                          buttonheight: screenWidth * 0.35,
                          buttonwidth: screenWidth * 0.45,
                          usingIcon: false,
                          text: "Test",
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: NewButton(
                          voidcallback: null,
                          buttonheight: screenWidth * 0.35,
                          buttonwidth: screenWidth * 0.45,
                          usingIcon: false,
                          text: "Test",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: NewButton(
                          voidcallback: null,
                          buttonheight: screenWidth * 0.35,
                          buttonwidth: screenWidth * 0.45,
                          usingIcon: false,
                          text: "Test",
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
