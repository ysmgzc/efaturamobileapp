import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RaporWidget extends StatelessWidget {
  const RaporWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.titleText,
    required this.amountText,
    required this.route,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String titleText;
  final String amountText;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(route);
      },
      child: Center(
        child: Container(
          color: Colors.white,
          width: screenWidth * 0.95,
          height: screenHeight * 0.10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  titleText,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  amountText,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
