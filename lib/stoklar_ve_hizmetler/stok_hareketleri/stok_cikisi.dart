import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/islemler/components/dropdownmenu_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/components/tarih_widget.dart';
import 'package:efaturamobileapp/islemler/components/texfield_widget.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../urunekleborder.dart';

class StokCikisiEkle extends StatefulWidget {
  const StokCikisiEkle({Key? key}) : super(key: key);

  @override
  State<StokCikisiEkle> createState() => _StokCikisiEkleState();
}

class _StokCikisiEkleState extends State<StokCikisiEkle> {
  TextEditingController dateInput = TextEditingController();
  String? selectedValue;
  List<String> items = <String>[
    'Fire Çıkışı',
    'Sarf Çıkış',
    'Sayım Çıkış',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Stok Çıkışı',
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
          ]),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
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
                    text: "Hareket Tipi",
                    findText: "Ara",
                    width: 0.9,
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
                            TextFieldWidget(
                              text: "Belge No",
                              widthFactor: 0.42,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      CustomDatePickerAltin(
                        labelText: "Tarih ",
                        width: 0.4,
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
                          text: "Kategori",
                          widthFactor: 0.9,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
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
                  const SizedBox(height: 8),
                  const Divider(),
                  UrunEkleBorder(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    route: const UrunlerScreen(),
                    text: "Ürünler",
                  ),
                  SizedBox(height: screenHeight * 0.2),
                ],
              ),
            ),
          ),
          SlidingPanel(),
        ],
      ),
    );
  }
}
