import 'package:efaturamobileapp/scan_widget.dart';
import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: kSearchColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: controller,
          onChanged: (value) {
            print(value);
          }, 
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                // horizontal: 20,
                vertical: 20),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BarkodTara()),
                    );
                  },
                  icon: suffixIcon != null 
                      ? Image.asset(suffixIcon!) 
                      : const Icon(Icons.clear),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
