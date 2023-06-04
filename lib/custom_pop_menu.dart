import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class CustomPopMenuWidget extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final double menuWidth;
  final String selectedValue;
  final List<String> items;
  final double menuItemsWidth;
  final double dividerIndent;
  final double dividerEndIndent;
  final bool showDivider;

  CustomPopMenuWidget({
    required this.width,
    required this.height,
    required this.title,
    required this.menuWidth,
    required this.selectedValue,
    required this.items,
    required this.menuItemsWidth,
    this.dividerIndent = 0,
    this.dividerEndIndent = 0,
    this.showDivider = false,
  });

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
    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.white,
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (widget.showDivider)
            Divider(
              indent: widget.dividerIndent,
              endIndent: widget.dividerEndIndent,
            ),
          Text(
            widget.title,
            style:const TextStyle(color: yTextColor, fontSize: 14),
          ),
        const  SizedBox(height: 6,),
          PopupMenuButton(
            offset:const Offset(-20, 0),
            child: Container(
              width: widget.menuWidth,
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: widget.menuWidth - 40,  // Icon ve padding için ayrılan alan 
                    child: Text(
                      selectedValue ?? "18",
                      style:const TextStyle(fontSize: 16, color: Colors.black),
                      overflow: TextOverflow.ellipsis,  // Metnin taşması durumunda ... ekler
                    ),
                  ),
                 const Icon(
                    Icons.expand_more,
                    color: Colors.grey,
                  ),
                ],
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
                  child: Container(
                    width: widget.menuItemsWidth,
                    child: Text(value),
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}
