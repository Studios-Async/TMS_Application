import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tms/general_screens/Student/student_balance.dart';
import 'package:tms/general_screens/Tutor/tutor_seerequests.dart';
import 'package:tms/general_screens/lesson_request.dart';
import 'package:tms/general_screens/Student/student_home.dart';
import 'package:tms/general_screens/Student/welldone_page.dart';
import 'package:tms/general_screens/Student/student_profile_page.dart';

class StudentNavBar extends StatefulWidget {
  const StudentNavBar({Key? key}) : super(key: key);

  @override
  State<StudentNavBar> createState() => _StudentNavBarState();
}

class _StudentNavBarState extends State<StudentNavBar> {
  int selectedIndex = 0; // Current selected index for the page
  late ScrollController _scrollController; // Controller for scrolling
  List<Widget> pages = [
    StudentHome(),
    MakeRequestsPage(),
    StudentProfilePage()
  ]; // List of pages

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(); // Initialize the scroll controller
  }

  // Function to navigate between pages when a navbar button is pressed
  navigatePages(int index) {
    setState(() {
      selectedIndex = index; // Update the selected index
      _scrollController.animateTo(
        index *
            MediaQuery.of(context).size.width, // Scroll to the selected page
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics:
            BouncingScrollPhysics(), // Bouncing scroll physics for the effect
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context)
                .size
                .width, // Set width to full screen width
            child: pages[index], // Display the selected page
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: GNav(
            haptic: true,
            gap: 6,
            iconSize: 25,
            backgroundColor: Colors.grey.shade800,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.all(20),
            onTabChange:
                navigatePages, // Call navigatePages when a navbar button is pressed
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.add_circle,
                text: "Add Lesson",
              ),
              GButton(
                icon: Icons.account_circle,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
