import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WellDonePage extends StatefulWidget {
  const WellDonePage({Key? key}) : super(key: key);

  @override
  _WellDonePageState createState() => _WellDonePageState();
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Row(
                    // Divider + Tutor name
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 4,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Tutor', // Replace with Tutor name
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
                      imageAsset: "assets/images/happyface.png",
                      isSelected: selectedRating == 1,
                      onTap: () {
                        setState(() {
                          selectedRating = 1;
                        });
                      },
                    ),
                    RatingButton(
                      imageAsset: "assets/images/neutralface.png",
                      isSelected: selectedRating == 2,
                      onTap: () {
                        setState(() {
                          selectedRating = 2;
                        });
                      },
                    ),
                    RatingButton(
                      imageAsset: "assets/images/sadface.png",
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
                  child: const Padding(
                    padding: EdgeInsets.all(10),
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
                  child: const Text("Submit"),
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
  final String imageAsset;
  final bool isSelected;
  final VoidCallback onTap;

  const RatingButton({
    required this.imageAsset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: isSelected ? 1 : 1,
          ),
        ),
        child: ClipOval(
          child: Container(
            color: isSelected ? Colors.blue : Colors.transparent,
            child: Image.asset(
              imageAsset,
              width: 80,
              height: 80,
              color: isSelected ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: WellDonePage(),
  ));
}
