import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRowWidget extends StatelessWidget {
  final List<int> optionIds;
  final Widget destinationWidget;

  CustomRowWidget({required this.optionIds, required this.destinationWidget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleIconAltin(
          leftText: "Sırala",
          iconData: 'assets/icons/newicon/expandicon.png',
          iconColor: color6,
          rightpadding: 0,
          color: color8,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SiralamaIslemi(
                  onSort: (sortedItems) {},
                  optionIds: optionIds,
                );
              },
            );
          },
        ),
        CircleIconAltin(
          leftText: "Filtre",
          iconData: 'assets/icons/newicon/filtreicon.png',
          iconColor: color6,
          rightpadding: 0,
          color: color8,
          onPressed: () {
            Get.to(destinationWidget);
          },
        ),
        CircleIconAltin(
          rightText: "Tarih Aralığı",
          iconData: 'assets/icons/newicon/aramatakvimicon.png',
          iconColor: color6,
          rightpadding: 0,
          iconpadding: 0,
          color: color8,
          onPressed: () {},
        ),
      ],
    );
  }
}
