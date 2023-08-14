import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu_rounded),
      iconSize: 30,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Placeholder()));
      },
    );
  }
}
