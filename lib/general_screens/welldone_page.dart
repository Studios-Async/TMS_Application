import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WellDonePage extends StatefulWidget {
  const WellDonePage({super.key});

  @override
  State<WellDonePage> createState() => _WellDonePageState();
}

class _WellDonePageState extends State<WellDonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              // Green Tick
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: Lottie.asset(
                    "assets/icons/tick.json",
                    repeat: false,
                  ),
                ),
              ),
              const Text(
                "Well Done!",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You have finished your lesson with:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  //Divider + Tutor name
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 4,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Tutor', //Replace with Tutor name
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 4,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
