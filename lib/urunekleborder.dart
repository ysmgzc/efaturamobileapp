import 'package:dotted_border/dotted_border.dart';
import 'package:efaturamobileapp/constants.dart';
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
    this.hasBorder = false,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Widget route;
  final String text;
  final double width;
  final double height;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.10,
      width: screenWidth * width,
      decoration: BoxDecoration(
        color:
            hasBorder ? kSearchColor.withOpacity(0.1) : const Color(0xffFCFCFC),
        borderRadius: BorderRadius.circular(15),
        border: hasBorder
            ? Border.all(
                color: Colors.grey,
                width: 1.0,
              )
            : null,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: hasBorder
            ? Container(
                height: screenHeight * height,
                child: TextButton(
                  onPressed: () {
                    Get.to(route);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        text,
                        style: const TextStyle(
                          color: yTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                strokeWidth: 1,
                dashPattern: const [6, 6],
                color: Colors.grey,
                child: Container(
                  height: screenHeight * height,
                  child: TextButton(
                    onPressed: () {
                      Get.to(route);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          text,
                          style: const TextStyle(
                            color: yTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
