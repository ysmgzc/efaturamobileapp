/*import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class ToplamTutar extends StatelessWidget {
  final List<String> textLabels;
  final List<String> textValues;

  const ToplamTutar({
    Key? key,
    this.textLabels = const [],
    this.textValues = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < textLabels.length; i++)
                  Padding(
                    padding: EdgeInsets.only(top: i == 0 ? 15.0 : 10.0),
                    child: Text(
                      textLabels[i],
                      style: const TextStyle(fontSize: 16, color: yTextColor2),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < textValues.length; i++)
                  Padding(
                    padding: EdgeInsets.only(top: i == 0 ? 15.0 : 10.0),
                    child: Text(
                      textValues[i],
                      style: const TextStyle(fontSize: 16, color: yTextColor2),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/