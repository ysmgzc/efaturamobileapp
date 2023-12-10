import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class CircleIconAltin extends StatelessWidget {
  final dynamic iconData;
  final Function onPressed;
  final String? leftText;
  final String? rightText;
  final Color? color;
  final Color? iconColor;
  final double? containerwidth;
  final double? containerheight;
  final double? iconpadding;
  final double? rightpadding;

  CircleIconAltin({
    required this.iconData,
    required this.onPressed,
    this.rightText,
    this.leftText,
    this.color = color8,
    this.iconColor = color6,
    this.containerwidth = 30,
    this.containerheight = 30,
    this.iconpadding = 3.0,
    this.rightpadding = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Row(
        children: [
          if (leftText != null) ...[
            Text(
              leftText!,
            ),
          ],
          Container(
            margin: EdgeInsets.only(right: rightpadding!),
            width: containerwidth,
            height: containerheight,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: iconData is IconData
                ? Padding(
                    padding: EdgeInsets.all(iconpadding!),
                    child: Icon(
                      iconData,
                      color: iconColor,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(iconpadding!),
                    child: Image.asset(
                      iconData,
                      color: iconColor,
                    ),
                  ),
          ),
          if (rightText != null) ...[
            Text(
              rightText!,
            ),
          ],
        ],
      ),
    );
  }
}

class CustomRectangleIconAltin extends StatelessWidget {
  final dynamic iconData;
  final Function onPressed;
  final Color? color;
  final Color? iconColor;
  final double? containerwidth;
  final double? containerheight;
  final double? iconpadding;

  CustomRectangleIconAltin({
    required this.iconData,
    required this.onPressed,
    this.color,
    this.iconColor,
    this.containerwidth = 30,
    this.containerheight = 30,
    this.iconpadding = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: containerwidth,
        height: containerheight,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6), // Gölge rengi
              spreadRadius: 1, // Dağılma yarıçapı
              blurRadius: 5, // Bulanıklık yarıçapı
              offset: Offset(2, 4), // Sağ alttaki konum
            ),
          ],
        ),
        child: iconData is IconData
            ? Padding(
                padding: EdgeInsets.all(iconpadding!),
                child: Icon(
                  iconData,
                  color: iconColor,
                ),
              )
            : Padding(
                padding: EdgeInsets.all(iconpadding!),
                child: Image.asset(
                  iconData,
                  color: iconColor,
                ),
              ),
      ),
    );
  }
}
