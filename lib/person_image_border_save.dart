
import 'package:flutter/material.dart';

class PersonImageBorderSave extends StatelessWidget {
  const PersonImageBorderSave({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.text,
    required this.assetPath,
  });

  final double screenHeight;
  final double screenWidth;
  final String text;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight * 0.18,
        width: screenWidth * 0.40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7), 
            spreadRadius: 0.5, 
            blurRadius: 7, 
            offset:const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: const Alignment(0, -0.3),
            child: Container(
               height: screenHeight * 0.09,
                width: screenWidth * 0.17,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assetPath), 
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
         const SizedBox(height: 10), 
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              text, 
              style: const TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
