import 'package:flutter/material.dart';

class BottomAppBarDeleteDesign extends StatelessWidget {
  final VoidCallback onSaveButtonPressed;
  final Color backgroundColor;
  final int saveButtonFlex;
  final Widget? child;

  const BottomAppBarDeleteDesign({
    Key? key,
    required this.onSaveButtonPressed,
    this.backgroundColor = const Color(0xffD9B26D),
    this.saveButtonFlex = 4,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: backgroundColor,
      child: SizedBox(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
              flex: saveButtonFlex,
              child: TextButton(
                onPressed: onSaveButtonPressed,
                style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                ),
                child: const Text(
                  'Sil',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
