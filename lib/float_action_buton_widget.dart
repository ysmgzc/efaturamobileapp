import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

class CustomFAB extends StatelessWidget {
  final List<SpeedDialData> childrenData;
  final bool isSpeedDial;

  const CustomFAB(
      {Key? key, required this.childrenData, this.isSpeedDial = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSpeedDial
        ? Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: SpeedDial(
              icon: Icons.add,
              activeIcon: Icons.close,
              backgroundColor: color6,
              foregroundColor: Colors.white,
              overlayColor: color4,
              overlayOpacity: 0.4,
              spaceBetweenChildren: 5,
              spacing: 5,
              children: childrenData.map((data) {
                return SpeedDialChild(
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  backgroundColor: color6,
                  label: data.label,
                  onTap: () {
                    Get.to(data.route);
                  },
                );
              }).toList(),
            ),
          )
        : FloatingActionButton(
            backgroundColor: color6,
            onPressed: () {
              Get.to(childrenData[0].route);
            },
            shape: const StadiumBorder(
              side: BorderSide(color: color6, width: 3),
            ),
            child: const Icon(Icons.add),
          );
  }
}

class SpeedDialData {
  final String label;
  final Widget route;

  SpeedDialData({required this.label, required this.route});
}
