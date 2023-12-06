import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/dropdownmenu_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/islemler/components/tarih_widget.dart';
import 'package:efaturamobileapp/islemler/components/texfield_widget.dart';
import 'package:flutter/material.dart';
import '../../../person_image_border.dart';
import '../../nakit_durumu.dart';

class CekGirisiEkle extends StatefulWidget {
  const CekGirisiEkle({Key? key}) : super(key: key);

  @override
  State<CekGirisiEkle> createState() => _CekGirisiEkleState();
}

class _CekGirisiEkleState extends State<CekGirisiEkle> {
  TextEditingController dateInput = TextEditingController();
  String? selectedValue1;
  List<String> items1 = <String>[
    'TL',
    'EUR',
    'GBP',
    'CHF',
    'JPY',
    'AZM',
    'BGN',
    'CNY',
    'USD',
    'PLN',
    'RUB',
    'SGD',
    'DZD',
    'XAU',
    'UZS',
    'MKD',
    'KGS',
  ];
  String? selectedValue2;
  List<String> items2 = <String>[
    '(+) Bakiye',
    '(-) Bakiye',
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Çek Girişi',
        ),
        actions: [
          CircleIconAltin(
            iconData: 'assets/icons/newicon/delete.png',
            iconpadding: 8,
            iconColor: color8,
            color: color6,
            onPressed: () {},
          ),
          CircleIconAltin(
            iconData: Icons.edit,
            iconColor: color8,
            color: color6,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PersonImageBorder(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: "Ön  ",
                    assetPath: 'assets/icons/cameraicon.png',
                  ),
                  PersonImageBorder(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: "Arka",
                    assetPath: 'assets/icons/cameraicon.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      text: "Müşteri & Tedarikçi Adı *",
                      widthFactor: screenWidth * 0.9,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldWidget(
                        text: "Tutar",
                        widthFactor: 0.5,
                      ),
                    ],
                  ),
                  CustomDropdownButton(
                    items: items1,
                    text: "Para Birimi",
                    findText: "Birim Ara",
                    width: 0.35,
                  ),
                ],
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      text: "Çek Numarası",
                      widthFactor: 0.9,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDatePickerAltin(
                          labelText: "Tarihi ",
                        ),
                      ],
                    ),
                  ),
                  CustomDatePickerAltin(
                    labelText: "Vadesi ",
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: RectangleButtonWidget(
                  text: "İlişkili Faturalar & Siparişler",
                  textColor: color6,
                  bgColor: color8,
                  iconColor: color6,
                  route: NakitDurumuScreen(),
                ),
              ),
              const Divider(),
              TextFieldWidget(
                text: "Açıklama",
                widthFactor: screenWidth * 0.9,
                heightFactor: 0.14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
