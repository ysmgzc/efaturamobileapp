import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final Widget child;

  const CustomContainerWidget({
    required this.screenWidth,
    required this.screenHeight,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.03,
      ),
      decoration: BoxDecoration(
        color: color8,
        border: Border.all(
          color: color6,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: child,
    );
  }
}
