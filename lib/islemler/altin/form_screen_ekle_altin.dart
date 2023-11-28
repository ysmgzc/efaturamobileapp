import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/tarih_widget.dart';
import 'package:efaturamobileapp/islemler/urun_ekle_border_save_animasyonsuz_altin.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_hizmet_sec_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_alt%C4%B1n/urun_hizmet_sec_screen_altin.dart';
import 'package:efaturamobileapp/urunekleborder.dart';
import 'package:flutter/material.dart';

class FormScreenEkleAltin extends StatefulWidget {
  String personImageBorderMetin;
  String appBarBaslik;
  FormScreenEkleAltin(
      {required this.appBarBaslik, required this.personImageBorderMetin});

  @override
  State<FormScreenEkleAltin> createState() => _FormScreenEkleAltinState();
}

class _FormScreenEkleAltinState extends State<FormScreenEkleAltin> {
  int menu = 0;
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {
      if ([
        'Altın Girişi',
        'Altın Çıkışı',
        'Altın Alışı',
        'Altın Satışı',
        'Bedelli Altın Girişi',
        'Bedelli Altın Çıkışı',
        'Gelen İade',
        'Çıkan İade',
        'İşçilik Girişi',
        'İşçilik Çıkışı',
      ].contains(widget.appBarBaslik)) {
        menu = 1;
      }
    });
  }

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
  List<String> items1 = <String>[
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
  TextEditingController dateInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: color4,
        centerTitle: true,
        title: Text(
          widget.appBarBaslik,
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
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
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const SearchField(
                      text: "Müşteri Seçiniz...",
                      icon: Icon(Icons.expand_more),
                      hasBorder: true),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDatePickerAltin(labelText: "Tarih "),
                      CustomDatePickerAltin(
                        labelText: "Valör ",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Column(
                    children: [
                      menu == 0
                          ? UrunEkleBorder(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              route: const UrunHizmetSecAltinScreen(),
                              text: "Ürün / Hizmet Ekle",
                            )
                          : UrunEkleBorder(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              route: const UrunHizmetSecScreen(),
                              text: "Ürün / Hizmet Ekle",
                            ),
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          UrunEkleBorderSaveAnimasyonsuzAltin(
                            showInfo: true,
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            baslik: "Bilezik ",
                            baslik2: "22K",
                            birim: '100 GR',
                            fiyat: "916",
                            iscilik: "İşçilik :",
                            iscilikDegeri: "0,020",
                            kur: "Kur :",
                            kurDegeri: "₺0,00",
                            araToplamFiyat: '91,960 GR',
                            iscilikHesabi: "2,00 GR",
                            miktar: "92,600 GR",
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
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
