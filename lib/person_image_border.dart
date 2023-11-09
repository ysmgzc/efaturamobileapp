import 'package:dotted_border/dotted_border.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/kamera_showdialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PersonImageBorder extends StatefulWidget {
  const PersonImageBorder({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    this.route,
    required this.text,
    required this.assetPath,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Widget? route;
  final String text;
  final String assetPath;

  @override
  _PersonImageBorderState createState() => _PersonImageBorderState();
}

class _PersonImageBorderState extends State<PersonImageBorder> {
  XFile? _selectedImage;

  @override
  Widget build(BuildContext context) {
    if (_selectedImage != null) {
      return Container(
        height: widget.screenHeight * 0.18,
        width: widget.screenWidth * 0.40,
        child: Image.file(File(_selectedImage!.path), fit: BoxFit.cover),
      );
    }

    // Eğer fotoğraf seçilmediyse eski yapınızı döndüren kod:
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      strokeWidth: 1,
      dashPattern: const [6, 6],
      color: yTextColor3,
      child: Container(
        height: widget.screenHeight * 0.18,
        width: widget.screenWidth * 0.40,
        color: kContImgColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () async {
                  if (widget.route != null) {
                    Get.to(widget.route!);
                  } else {
                    XFile? image = await kameraShowDialogWidget(context);
                    if (image != null) {
                      setState(() {
                        _selectedImage = image;
                      });
                    }
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
                    const SizedBox(width: 3),
                    Text(
                      widget.text,
                      style: const TextStyle(
                          fontSize: 14,
                          color: yTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.3),
              child: Container(
                height: widget.screenHeight * 0.09,
                width: widget.screenWidth * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.assetPath),
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
