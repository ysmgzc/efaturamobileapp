import 'package:efaturamobileapp/scan_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';

class SearchField extends StatelessWidget {
  final String? suffixIcon;

  const SearchField({
    Key? key,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: kSearchColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
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
          hintText: "Ara",
          prefixIcon: const Icon(Icons.search),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  controller.clear();
                  Get.to(const BarkodTara());
                },
                icon: suffixIcon != null
                    ? Image.asset(suffixIcon!)
                    : const Icon(Icons.clear),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
