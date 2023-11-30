import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/scan_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';

class SearchField extends StatelessWidget {
  final dynamic suffixIcon;
  final String? text;
  final Widget icon;

  const SearchField({
    Key? key,
    this.suffixIcon,
    this.icon = const Icon(
      Icons.clear,
      color: color6,
    ),
    this.text = "Ara",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    Widget buildSuffixIcon() {
      if (suffixIcon is Widget) {
        return suffixIcon;
      } else if (suffixIcon is String) {
        return Image.asset(suffixIcon!);
      } else {
        return icon;
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: color8,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: color6,
          width: 1.0,
        ),
      ),
      child: TextField(
        controller: controller,
        maxLines: 1,
        onChanged: (value) {
          print(value);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(color: color6, fontWeight: FontWeight.normal),
          suffixIconColor: color6,
          prefixIcon: const Icon(
            Icons.search,
            color: color6,
          ),
          iconColor: color6,
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  controller.clear();
                },
                icon: buildSuffixIcon(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
