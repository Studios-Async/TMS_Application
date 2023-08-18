import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tms/general_screens/student_home.dart';
import 'package:tms/general_screens/welldone_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  //starting page index
  int selectedIndex = 0;

  //Change pages function
  navigatePages(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [StudentHome(), WellDonePage(), Placeholder()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: GNav(
            haptic: true, //haptic feedback on change
            gap: 6,
            iconSize: 25,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.all(20),
            onTabChange: navigatePages,

            //Buttons
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
