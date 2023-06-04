import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class ToplamTutarSave extends StatelessWidget {
  final List<String> textLabels;
  final List<String> textValues;

  const ToplamTutarSave({
    Key? key,
    this.textLabels = const [],
    this.textValues = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding:  EdgeInsets.only(left: 30,top: 20,right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOPLAM',
                    style: TextStyle(fontSize: 16, color: yTextColor,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'TUTAR',
                    style: TextStyle(fontSize: 16, color: yTextColor,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            
          ),
        Container(
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
                          style:const TextStyle(fontSize: 16, color: yTextColor2),
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
                          style:const TextStyle(fontSize: 16, color: yTextColor2),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
