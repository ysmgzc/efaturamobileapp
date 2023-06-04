import 'package:dotted_border/dotted_border.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/kamera_showdialog_widget.dart';
import 'package:flutter/material.dart';
class PersonImageBorder extends StatelessWidget {
  const PersonImageBorder({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
     this.route,
    required this.text,
    required this.assetPath,
  });

  final double screenHeight;
  final double screenWidth;
  final Widget? route;
  final String text;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      strokeWidth: 1,
      dashPattern: const [6, 6],
      color: yTextColor3,
      child: Container(
        height: screenHeight * 0.18,
        width: screenWidth * 0.40,
        color: kContImgColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
               onPressed: () {
                  if (route != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => route!),
                    );
                  }
                  else {
                    KameraShowDialogWidget(context); 
                  }
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  const  SizedBox(width: 3),
                    Text(text, style: const TextStyle(fontSize: 14,color: yTextColor, fontWeight: FontWeight.bold),),
                   const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.3),
              child: Container(
                height: screenHeight * 0.09,
                  width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetPath), 
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
