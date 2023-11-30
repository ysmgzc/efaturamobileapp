import 'package:dotted_border/dotted_border.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/scan_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UrunEkleBorder extends StatelessWidget {
  const UrunEkleBorder({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.route,
    required this.text,
    this.width = 0.95,
    this.height = 0.14,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Widget route;
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.10,
      width: screenWidth * width,
      decoration: BoxDecoration(
        color: color8,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: color6,
          width: 1.0,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: screenHeight * height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Get.to(route);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleIconAltin(
                      iconData: 'assets/icons/newicon/add.png',
                      iconColor: color8,
                      containerheight: 20,
                      containerwidth: 20,
                      color: color6,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 6),
                    Text(
                      text,
                      style: const TextStyle(
                        color: color6,
                      ),
                    ),
                  ],
                ),
              ),
              CircleIconAltin(
                iconData: 'assets/icons/newicon/scan.png',
                iconColor: color8,
                color: color6,
                containerheight: 30,
                containerwidth: 30,
                onPressed: () {
                  Get.to(const BarkodTara());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
