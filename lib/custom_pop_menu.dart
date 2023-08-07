import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class CustomPopMenuWidget extends StatefulWidget {
  final double width;
  final double? height; // İsteğe bağlı olarak 'double?' tipine çevirdik.
  final String title;
  final double menuWidth;
  final String selectedValue;
  final List<String> items;
  final double menuItemsWidth;
  final double dividerIndent;
  final double dividerEndIndent;
  final bool showDivider;

  const CustomPopMenuWidget({
    Key? key,
    required this.width,
    this.height, // 'required' özelliğini kaldırdık.
    required this.title,
    required this.menuWidth,
    required this.selectedValue,
    required this.items,
    required this.menuItemsWidth,
    this.dividerIndent = 0,
    this.dividerEndIndent = 0,
    this.showDivider = false,
  }) : super(key: key);

  @override
  _CustomPopMenuWidgetState createState() => _CustomPopMenuWidgetState();
}

class _CustomPopMenuWidgetState extends State<CustomPopMenuWidget> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: widget.width,
      height: widget.height, // Eğer 'widget.height' null ise, otomatik olarak içeriğine göre yükseklik alır.
      color: Colors.white,
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.showDivider)
              Divider(
                indent: widget.dividerIndent,
                endIndent: widget.dividerEndIndent,
              ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.025),
              child: Text(
                widget.title,
                style: const TextStyle(color: yTextColor, fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.30 - 25,
                  child: PopupMenuButton<String>(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        selectedValue ?? "18",
                        style: const TextStyle(fontSize: 16, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    onSelected: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    itemBuilder: (BuildContext context) {
                      return widget.items.map((value) {
                        return PopupMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList();
                    },
                  ),
                ),
                const Icon(
                  Icons.expand_more,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
