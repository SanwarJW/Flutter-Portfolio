import 'package:flutter/material.dart';

class Gemini extends StatelessWidget {
  const Gemini({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 3, 3, 35),
        borderRadius: BorderRadius.circular(20), // Adjust the radius here
      ),
      height: 388,
      child: Row(
        children: [
          Container(
            height: 300, // Height of the container
            decoration: BoxDecoration(
              color: Colors
                  .transparent, // Set to transparent or your preferred color
              borderRadius:
                  BorderRadius.circular(20), // Corner radius for the container
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Corner radius for the image
              child: Image.asset(
                "assets/images/gemini1.png",
                height: 300, // Height of the image
                fit: BoxFit.cover,
                width:
                    null, // Width of the image is set to null to keep original size
              ),
            ),
          ),
          Container(
            height: 300, // Height of the container
            decoration: BoxDecoration(
              color: Colors
                  .transparent, // Set to transparent or your preferred color
              borderRadius:
                  BorderRadius.circular(20), // Corner radius for the container
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Corner radius for the image
              child: Image.asset(
                "assets/images/gemini1.png",
                height: 300, // Height of the image
                fit: BoxFit.cover,
                width:
                    null, // Width of the image is set to null to keep original size
              ),
            ),
          ),
        ],
      ),
    );
  }
}
