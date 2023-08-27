import 'package:flutter/material.dart';
import 'package:tms/general_screens/Admin/Home%20Utilities/revenue.dart';
import 'package:tms/general_screens/Admin/Home%20Utilities/top_student.dart';
import 'package:tms/general_screens/Admin/Home%20Utilities/top_tutor.dart';
import 'package:tms/general_screens/Admin/Home%20Utilities/total_hours.dart';
import 'package:tms/general_screens/Admin/Home%20Utilities/total_users.dart';

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
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
              SizedBox(
                height: screenWidth * 0.05,
              ),
              const Revenue(), // Button to show the REVENUE
              SizedBox(height: screenWidth * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const TotalUsers(), //Button to show the TOTAL USERS
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      const TopTutor(), //Button to show the TOP TUTOR
                    ],
                  ),
                  Column(
                    children: [
                      const TotalHours(), //Button to show the TOTAL HOURS
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      const TopStudent(), //Button to show the TOP STUDENT
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
