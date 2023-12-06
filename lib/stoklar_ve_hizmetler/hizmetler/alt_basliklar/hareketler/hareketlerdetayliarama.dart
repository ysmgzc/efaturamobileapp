import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:flutter/material.dart';

class HareketlerDetayliArama extends StatefulWidget {
  const HareketlerDetayliArama({super.key});

  @override
  State<HareketlerDetayliArama> createState() => _HareketlerDetayliAramaState();
}

class _HareketlerDetayliAramaState extends State<HareketlerDetayliArama> {
  bool value = false;
  TextEditingController dateInput = TextEditingController();
  String? selectedValue;
  List<String> items = <String>[
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
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detaylı Arama',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              children: [
//----------------------Tarih-------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Tarih",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDatePickerDialog(
                          titleText: 'Tarih',
                          startText: 'Başlangıç Tarihini Seç',
                          endText: 'Bitiş Tarihini Seç',
                        );
                      },
                    );
                  },
                ),
//---------------------Hareket Türü-----------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Hareket Türü",
                  altMetin: "Tümü",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ShowDialogCheckBox(
                          dialogTitle: "İşlem Tipi",
                          checkboxTexts: [
                            "Satış Faturası",
                            "Alış Faturası",
                            "Satış Siparişi",
                            "Alış Siparişi",
                            "Masraf",
                            "Alış İade Fatrası",
                          ],
                        );
                      },
                    );
                  },
                ),
//-----------------------------İptal Edilenler-----------------------------------------------------
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'İptal Edilenler',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
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
              ],
            )),
      ),
      bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonText: "SONUÇLARI GÖSTER",
        saveButtonBackgroundColor: Colors.blue,
        onDeleteButtonPressed: () {},
        deleteButtonText: "TEMİZLE",
      ),
    );
  }
}
