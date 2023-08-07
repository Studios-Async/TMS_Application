import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WellDonePage extends StatefulWidget {
  const WellDonePage({super.key});

  @override
  State<WellDonePage> createState() => _WellDonePageState();
}

class _WellDonePageState extends State<WellDonePage> {
  int selectedRating = 0; // To keep track of the selected rating.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Rate Tutor:",
                      style: TextStyle(
                        fontSize: 20, // Smaller text size for "Rate Tutor"
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    RatingButton(
                      icon: Icons.sentiment_very_satisfied,
                      color: Colors.green, // Custom color for the face
                      isSelected: selectedRating == 1,
                      onTap: () {
                        setState(() {
                          selectedRating = 1;
                        });
                      },
                    ),
                    RatingButton(
                      icon: Icons.sentiment_neutral,
                      color: Colors.yellow, // Custom color for the face
                      isSelected: selectedRating == 2,
                      onTap: () {
                        setState(() {
                          selectedRating = 2;
                        });
                      },
                    ),
                    RatingButton(
                      icon: Icons.sentiment_very_dissatisfied,
                      color: Colors.red, // Custom color for the face
                      isSelected: selectedRating == 3,
                      onTap: () {
                        setState(() {
                          selectedRating = 3;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write your comment and feedback here...",
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add submit button functionality here
                  },
                  child: Text("Submit"),
                ),
                const SizedBox(height: 50), // Extra spacing at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RatingButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const RatingButton({
    required this.icon,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.black,
            width: isSelected ? 3 : 1,
          ),
        ),
        padding: const EdgeInsets.all(12), // Larger padding for larger icons
        child: Icon(
          icon,
          size: 50, // Larger icon size
          color: color,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WellDonePage(),
  ));
}
