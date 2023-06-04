import 'package:flutter/material.dart';

class BottomAppBarDeleteDesign extends StatelessWidget {
  final VoidCallback onSaveButtonPressed;
  final Color backgroundColor;
  final int saveButtonFlex;

  const BottomAppBarDeleteDesign({
    Key? key,
    required this.onSaveButtonPressed,
    this.backgroundColor = const Color(0xffD9B26D),
    this.saveButtonFlex = 4,
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
                child:const Text(
                  'Sil', 
                style: TextStyle(color: Colors.white)),
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
