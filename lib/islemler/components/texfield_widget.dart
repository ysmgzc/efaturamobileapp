import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final text;
  final double widthFactor;
  final double heightFactor;
  final void Function(String)? onChanged; // Callback fonksiyonunu tanımlayın

  TextFieldWidget({
    required this.text,
    this.widthFactor = 0.29,
    this.heightFactor = 0.07, //06
    this.onChanged, // Callback fonksiyonu ekleyin
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * widget.widthFactor,
      height: screenHeight * widget.heightFactor,
      child: TextField(
        controller: _textEditingController,
        //maxLines: null,
        onChanged: widget.onChanged, // Callback fonksiyonunu burada kullanın
        decoration: InputDecoration(
          labelText: widget.text,
          labelStyle: TextStyle(fontSize: 10, color: color6),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: color6),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: color6),
          ),
        ),
      ),
    );
  }
}
