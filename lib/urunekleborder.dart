import 'package:dotted_border/dotted_border.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
class UrunEkleBorder extends StatelessWidget {
  const UrunEkleBorder({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.route,
    required this.text,
    this.width = 0.95,
  });

  final double screenHeight;
  final double screenWidth;
  final Widget route;
  final String text;
  final double width; 

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
          borderType: BorderType.RRect,
          radius:const Radius.circular(12),
          strokeWidth: 1,
          dashPattern:const [6, 6],
          color: Colors.grey,
          child: Container(
            height: screenHeight * 0.10,
            width: screenWidth * width,
            color: const Color(0xffFCFCFC),
            child: Align(
    alignment: Alignment.centerLeft,
    child: TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
         const SizedBox(width: 3),
        const  Icon(
            Icons.add,
            color: Colors.blue,
          ),
         const SizedBox(width: 3),
          Text(
            text,
            style:const TextStyle(color: yTextColor, fontWeight: FontWeight.bold),
          ),
         const SizedBox(height: 50),
        ],
      ),
    ),
            ),
          ),
        );
  }
}
