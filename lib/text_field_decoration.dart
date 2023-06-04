import 'package:flutter/material.dart';

class TextFieldDecoration extends StatelessWidget {
  const TextFieldDecoration({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    this.widthFactor = 0.9,
    this.heightFactor = 0.07,
    this.hintText = '',
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final double widthFactor;
  final double heightFactor;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade100,
            Colors.grey.shade50,
            Colors.white70,
          ],
        ),
      ),
      child: Container(
        width: screenWidth * widthFactor,
        height: screenHeight * heightFactor,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          ),
        ),
      ),
    );
  }
}
