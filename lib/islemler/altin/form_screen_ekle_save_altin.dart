import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat_sec_screen.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/components/urun_ekle_border_save_animasyonsuz_altin.dart';
import 'package:flutter/material.dart';

class FormScreenSaveAltin extends StatefulWidget {
  String appBarBaslik;
  FormScreenSaveAltin({
    required this.appBarBaslik,
  });

  @override
  State<FormScreenSaveAltin> createState() => _FormScreenSaveAltinState();
}

class _FormScreenSaveAltinState extends State<FormScreenSaveAltin> {
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
  TextEditingController dateInput = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.appBarBaslik,
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
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.01,
                ),
                color: color4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Cari Bilgisi",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RedButtonWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight),
                        SizedBox(
                          width: 5,
                        ),
                        RedButtonWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: color7,
                                ),
                                SizedBox(width: 8),
                                Column(
                                  children: [
                                    Text(
                                      "Fatura Tarihi",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: color7,
                                      ),
                                    ),
                                    Text(
                                      "27/11/2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: color7,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: color7,
                                ),
                                SizedBox(width: 8),
                                Column(
                                  children: [
                                    Text(
                                      "Vade Tarihi",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: color7,
                                      ),
                                    ),
                                    Text(
                                      "27/11/2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: color7,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Toplam Miktar",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: color7,
                                      ),
                                    ),
                                    Text(
                                      "140,400 GR",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: color7,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Kalan Miktar",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: color7,
                                      ),
                                    ),
                                    Text(
                                      "94,900 GR",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: color2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleIconAltin(
                          iconData: Icons.local_shipping,
                          onPressed: () {},
                        ),
                        CircleIconAltin(
                          iconData: Icons.print,
                          onPressed: () {},
                        ),
                        CircleIconAltin(
                          iconData: Icons.share,
                          onPressed: () {},
                        ),
                        CircleIconAltin(
                          iconData: Icons.copy_sharp,
                          onPressed: () {},
                        ),
                        CircleIconAltin(
                          iconData: Icons.more_vert,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.01,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: color6, width: 0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    RectangleButtonWidget(
                      icon: true,
                      text: 'Ödeme Tahsil Et',
                      route: TahsilatScreen(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    menu == 0
                        ? UrunEkleBorderSaveAnimasyonsuzAltin(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            showInfo: true,
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
                    SizedBox(height: screenHeight * 0.2),
                  ],
                ),
              ),
            ],
          ),
        ),
        panel == 1
            ? SlidingPanel(
                UrunEkleBorderSaveAnimasyonsuzAltin: true,
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
      ]),
      resizeToAvoidBottomInset: false,
    );
  }
}
