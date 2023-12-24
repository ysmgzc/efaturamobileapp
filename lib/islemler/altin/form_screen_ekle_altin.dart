import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/components/tarih_widget.dart';
import 'package:efaturamobileapp/islemler/components/urun_ekle_border_save_animasyonsuz_altin.dart';
import 'package:efaturamobileapp/search_field.dart';
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
  int panel = 0;
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
        'Altın Girişi Faturası',
        'Altın Çıkışı Faturası',
        'Altın Alışı Faturası',
        'Altın Satışı Faturası',
        'Bedelli Altın Girişi Faturası',
        'Bedelli Altın Çıkışı Faturası',
        'Gelen İade Faturası',
        'Çıkan İade Faturası',
        'İşçilik Girişi Faturası',
        'İşçilik Çıkışı Faturası',
      ].contains(widget.appBarBaslik)) {
        panel = 1;
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
        title: Text(
          widget.appBarBaslik,
        ),
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
                  ),
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
                      //  menu == 1?
                      UrunEkleBorder(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        route: UrunHizmetSecAltinScreen(
                            appBarBaslik: widget.appBarBaslik),
                        text: "Ürün / Hizmet Ekle",
                      ),
                      /* : UrunEkleBorder(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              route: UrunHizmetSecScreen(
                                  appBarBaslik: "Ürün / Hizmet şeçç"),
                              text: "Ürün / Hizmet Ekle",
                            ),*/
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          menu == 1
                              ? UrunEkleBorderSaveAnimasyonsuzAltin(
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
                                )
                              : UrunEkleBorderSaveAnimasyonsuzAltin(
                                  screenHeight: screenHeight,
                                  screenWidth: screenWidth,
                                  baslik: "Tekstil Hammadde",
                                  birim: '100 KG',
                                  fiyat: "25,00TL",
                                  iscilik: "KDV(%18)",
                                  iscilikDegeri: "25,00TL",
                                  kur: "EK VERGİ",
                                  kurDegeri: "₺0,00",
                                  araToplamFiyat: '₺20,00',
                                  iscilikHesabi: "₺20,00",
                                  miktar: "₺20,00",
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
                  SizedBox(height: screenHeight * 0.2),
                ],
              ),
            ),
          ),
          panel == 1
              ? SlidingPanel(
                  activemetin: true,
                )
              : SlidingPanel(
                  metin1: "GENEL TOPLAM",
                  metin2: "Ara Toplam",
                  metin3: "Dip İndirim(%)",
                  metin4: "Toplam İndirim",
                  metin5: "Toplam",
                  metin6: "Ek Vergi",
                  metin8: "Toplam KDV",
                  metin9: "Açıklama",
                )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
