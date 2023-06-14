import 'package:flutter/material.dart';

class BottomAppBarDesign extends StatelessWidget {
  final VoidCallback onSaveButtonPressed;
  final VoidCallback? onDeleteButtonPressed;
  final Color saveButtonBackgroundColor;
  final Color deleteButtonBackgroundColor;
  final String saveButtonText;
  final String deleteButtonText;
  final Widget? child;

  const BottomAppBarDesign({
    Key? key,
    required this.onSaveButtonPressed,
    this.onDeleteButtonPressed,
    this.saveButtonBackgroundColor = const Color(0xffD9B26D),
    this.deleteButtonBackgroundColor = const Color(0xffC0C0C0),
    this.saveButtonText = "Kaydet",
    this.deleteButtonText = "Sil",
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: saveButtonBackgroundColor,
      child: SizedBox(
        height: 50.0,
        child: Row(
          children: [
            if (onDeleteButtonPressed != null)
              Expanded(
                flex: 2,
                child: Container(
                  color: deleteButtonBackgroundColor,
                  height: 50.0,
                  child: TextButton(
                    onPressed: onDeleteButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: deleteButtonBackgroundColor,
                    ),
                    child: Text(deleteButtonText, style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            Expanded(
              flex: onDeleteButtonPressed != null ? 3 : 5, 
              child: TextButton(
                onPressed: onSaveButtonPressed,
                style: TextButton.styleFrom(
                  backgroundColor: saveButtonBackgroundColor,
                ),
                child: Text(saveButtonText, style: TextStyle(color: Colors.white)),
              ),
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
