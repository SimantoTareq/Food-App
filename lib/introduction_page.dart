import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(


            child: SvgPicture.asset(
              'images/Introduction.svg', // Update this path to your asset image path
              fit: BoxFit.cover, // Ensures the image fills the screen
            ),
          ),

          // Brand and description text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Brand",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color set to white for visibility
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Savor the convenience of restaurant-quality meals, delivered promptly.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Text color set to white for visibility
                  ),
                ),
              ],
            ),
          ),

          // Next Button at the bottom
          Positioned(
            bottom: 50, // Adjusts the distance from the bottom
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Button action here
                print("Next button pressed");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.blue, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Button text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}