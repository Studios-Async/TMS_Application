import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/Utilities/tutor_earnings.dart';
import 'package:tms/general_screens/Tutor/Profile%20Page/tutor_profile.dart';
import 'package:tms/general_screens/Tutor/Add%20Lesson/tutor_seerequests.dart';
import 'package:tms/general_screens/Student/Screens/Add%20Lesson/student_make_lessonreq.dart';
import 'package:tms/general_screens/Tutor/Home/tutor_home.dart';
import 'package:tms/general_screens/Student/Screens/Other/welldone_page.dart';
import 'package:tms/general_screens/Student/Screens/Profile%20Page/student_profile_page.dart';

import '../Screens/Home/student_home.dart';

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
    LessonPage(),
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
            const BouncingScrollPhysics(), // Bouncing scroll physics for the effect
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        child: Container(
          color: Colors.grey.shade800,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  iconColor: selectedIndex == 0
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
                ),
                GButton(
                  icon: Icons.add_circle,
                  text: "Add Lesson",
                  iconColor: selectedIndex == 1
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: "Profile",
                  iconColor: selectedIndex == 2
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
