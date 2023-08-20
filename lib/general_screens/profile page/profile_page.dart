import 'package:flutter/material.dart';
import 'package:tms/general_screens/profile%20page/subjects_study_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey, 
              ),



              child: const Center(
                child: Text(
                  'Profile Pic',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Student Name',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Text(
              'Tutor Role',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ProfileButton(
              label: 'Subjects You Study',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubjectsStudyPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ProfileButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: ElevatedButton(
        onPressed: onPressed, 
        child: Text(
          label,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
