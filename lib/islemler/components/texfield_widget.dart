import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final text;

  TextFieldWidget({
    required this.text,
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
      width: screenWidth * 0.29,
      height: screenHeight * 0.06,
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
          labelText: widget.text,
          labelStyle: TextStyle(fontSize: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: color6),
          ),
        ),
      ),
    );
  }
}
