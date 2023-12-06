import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/components/dropdownmenu_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/texfield_widget.dart';
import 'package:efaturamobileapp/screens/form_screen_ekle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../active_switch.dart';
import '../../../bottom_app_bar_design.dart';
import '../../../constants.dart';
import '../../../custom_pop_menu.dart';
import '../../../text_field_decoration.dart';

class TekstilHammaddeEkle extends StatefulWidget {
  const TekstilHammaddeEkle({Key? key}) : super(key: key);

  @override
  State<TekstilHammaddeEkle> createState() => _TekstilHammaddeEkleState();
}

class _TekstilHammaddeEkleState extends State<TekstilHammaddeEkle> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<String> items = <String>[
      'Kilogram',
      'Gram',
      'Ton',
      'Karat',
    ];
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

    List<String> items2 = <String>[
      '18',
      '8',
      '1',
      '0',
      '19',
      '16',
      '10',
      '5',
      '9',
      '4',
      '6',
      '13',
      '20',
      '15',
    ];
    List<String> items3 = <String>[
      'YOK',
      'VAR',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tekstil Hammadde',
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
              CustomDropdownButton(
                items: items,
                text: "Birim *",
                findText: "Birim Ara",
                width: 0.9,
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'SATIŞ FİYATI',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldWidget(
                        text: "Birim Fiyatı (KDV Dahil)",
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
              const SizedBox(height: 8),
              CustomDropdownButton(
                items: items2,
                text: "KDV Oranı",
                findText: "Ara",
                width: 0.9,
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      text: "Miktar",
                      widthFactor: 0.4,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'İNDİRİM BİLGİLERİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CustomDropdownButton(
                items: items3,
                text: "İndirim Tipi",
                findText: "Ara",
                width: 0.4,
              ),
              SizedBox(
                width: screenWidth * 0.45,
                child: const Divider(),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'AÇIKLAMA',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      text: "Açıklama",
                      widthFactor: 0.9,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'E-DEVLET BİLGİLERİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      children: [
                        Text(
                          'KDV Muafiyeti',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: ActiveSwitch(
                        onChanged: (bool value) {},
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
