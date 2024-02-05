import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tms/general_screens/Admin/Screens/Accounts/admin_accounts.dart';
import 'package:tms/general_screens/Admin/Screens/Home/admin_home.dart';
import 'package:tms/general_screens/Admin/Screens/Profile%20Page/admin_profile.dart';

class AdminNavBar extends StatefulWidget {
  const AdminNavBar({Key? key}) : super(key: key);

  @override
  State<AdminNavBar> createState() => _AdminNavBarState();
}

class _AdminNavBarState extends State<AdminNavBar> {
  int selectedIndex = 0; // Current selected index for the page
  late ScrollController _scrollController; // Controller for scrolling
  List<Widget> pages = [
    const AdminHome(),
    const AdminAccounts(),
    const AdminProfilePage()
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
        duration: const Duration(milliseconds: 400),
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
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
        child: Container(
          color: Colors.grey.shade800,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: GNav(
            haptic: true,
            gap: 2,
            iconSize: 20,
            backgroundColor: Colors.grey.shade800,
            color: Colors.white,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(20),
            onTabChange:
                navigatePages, // Call navigatePages when a navbar button is pressed
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
                iconColor: selectedIndex == 0 ? Colors.white : Colors.grey.withOpacity(0.4)  , // Set inactive color
              ),
              GButton(
                icon: FeatherIcons.userCheck,
                text: "Accounts",
                iconColor: selectedIndex == 1 ? Colors.white : Colors.grey.withOpacity(0.4), // Set inactive color
              ),
              GButton(
                icon: Icons.account_circle,
                text: "Profile",
                iconColor: selectedIndex == 2 ? Colors.white : Colors.grey.withOpacity(0.4), // Set inactive color
              ),
            ],
          ),
        ),
      ),
    ));
  }
}