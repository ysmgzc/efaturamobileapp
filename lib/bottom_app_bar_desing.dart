import 'package:flutter/material.dart';

class BottomAppBarDesign extends StatelessWidget {
  final VoidCallback onSaveButtonPressed;
  final Color backgroundColor;
  final int saveButtonFlex;
  final String text;

  const BottomAppBarDesign({
    Key? key,
    required this.onSaveButtonPressed,
    this.backgroundColor = const Color(0xffD9B26D),
    this.saveButtonFlex = 4,
    this.text = "Kaydet",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: backgroundColor,
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
              flex: saveButtonFlex,
              child: TextButton(
                onPressed: onSaveButtonPressed,
                child: Text(text, style:const TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
