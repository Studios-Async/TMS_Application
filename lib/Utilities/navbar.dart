import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tms/general_screens/login_page.dart';
import 'package:tms/general_screens/student_home.dart';
import 'package:tms/general_screens/welldone_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  late ScrollController _scrollController;
  List<Widget> pages = [StudentHome(), LoginPage(), WellDonePage()];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  navigatePages(int index) {
    setState(() {
      selectedIndex = index;
      _scrollController.animateTo(
        index * MediaQuery.of(context).size.width,
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
        physics: BouncingScrollPhysics(),
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: pages[index],
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: GNav(
            haptic: true,
            gap: 6,
            iconSize: 25,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.all(20),
            onTabChange: navigatePages,
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
