import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat_sec_screen.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RectangleButtonWidget extends StatelessWidget {
  const RectangleButtonWidget({
    super.key,
    this.height = 0.07,
    this.width,
    required this.text,
    this.textColor = color8,
    this.iconColor = color8,
    this.bgColor = color6,
    this.icon = false,
    required this.route,
  });

  final double height;
  final double? width;
  final String text;
  final Color textColor;
  final Color iconColor;
  final Color bgColor;
  final bool icon;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double actualWidth = width ??
        screenWidth; //width değeri verilmezse ekran genişliğini alacaktır
    return GestureDetector(
      onTap: () {
        Get.to(route);
      },
      child: Container(
        width: actualWidth,
        height: screenHeight * height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: color6),
          color: bgColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    if (icon)
                      CircleIconAltin(
                        iconData: Icons.account_balance_wallet,
                        onPressed: () {},
                      ),
                    Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.navigate_next,
                  color: iconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Red button

class RedButtonWidget extends StatelessWidget {
  const RedButtonWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.35,
      height: screenHeight * 0.035,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: color2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          "Vadesi geçen 182 gün",
          style: TextStyle(fontSize: 9),
        ),
      ),
    );
  }
}
