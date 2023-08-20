import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: 120,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey, 
              ),
              child: const Center(
                child: Text(
                  'Profile Pic',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Student Name',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                ProfileButton(
                  label: 'Subjects You Study',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Placeholder()),
                    );
                  },
                ),
                const SizedBox(height: 40),
                ProfileButton(
                  label: 'This Month\'s Learning',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Placeholder()),
                    );
                  },
                ),
                const SizedBox(height: 40),
                ProfileButton(
                  label: 'Current Balance',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Placeholder()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const ProfileButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 100, 
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 24), 
        ),
        child: Text(label),
      ),
    );
  }
}

