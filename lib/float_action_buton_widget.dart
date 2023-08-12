import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CustomFAB extends StatelessWidget {
  final List<SpeedDialData> childrenData;
  final bool isSpeedDial;

  const CustomFAB({
     Key? key,
    required this.childrenData, this.isSpeedDial = false}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSpeedDial
      ? Container(
          padding:const EdgeInsets.only(bottom: 10),
          child: SpeedDial(
            animatedIcon: AnimatedIcons.add_event,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            overlayColor: Colors.grey,
            overlayOpacity: 0.4,
            spaceBetweenChildren: 12,
            spacing: 12,
            children: childrenData.map((data) {
              return SpeedDialChild(
                child: const Icon(Icons.add, color: Colors.white,),
                backgroundColor: Colors.green,
                label: data.label,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => data.route,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        )
      : FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => childrenData[0].route,
              ),
            );
          },
          shape: const StadiumBorder(
            side: BorderSide(color: Colors.green, width: 3),
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