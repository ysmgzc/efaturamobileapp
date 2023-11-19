import 'package:flutter/material.dart';

class TextFieldDecoration extends StatelessWidget {
  const TextFieldDecoration({
    Key? key,
    this.controller,
    required this.screenWidth,
    required this.screenHeight,
    this.widthFactor = 0.9,
    this.heightFactor = 0.07,
    this.hintText = '',
    this.onChanged, // Callback fonksiyonu ekleyin
  }) : super(key: key);

  final TextEditingController? controller;
  final double screenWidth;
  final double screenHeight;
  final double widthFactor;
  final double heightFactor;
  final String hintText;
  final void Function(String)? onChanged; // Callback fonksiyonunu tanımlayın

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: screenHeight * heightFactor,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade100,
                Colors.grey.shade50,
                Colors.white70,
              ],
            ),
          ),
          child: SizedBox(
            width: screenWidth * widthFactor,
            height: screenHeight * heightFactor,
            child: TextField(
              controller: controller,
              maxLines: null,
              onChanged: onChanged, // Callback fonksiyonunu burada kullanın
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
