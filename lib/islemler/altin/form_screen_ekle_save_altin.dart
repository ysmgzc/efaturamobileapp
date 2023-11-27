import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat_screen.dart';
import 'package:efaturamobileapp/islemler/tarih_widget.dart';
import 'package:efaturamobileapp/islemler/urun_ekle_border_save_animasyonsuz_altin.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/tahsilat_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tahsilat_ekle.dart';
import 'package:efaturamobileapp/person_image_border_save.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_hizmet_sec_screen.dart';
import 'package:efaturamobileapp/toplam_tutar_save.dart';
import 'package:efaturamobileapp/urun_ekle_border_save.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

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
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        //shadowColor: Colors.transparent,
        backgroundColor: Color(0xFFEAEAEA),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          widget.appBarBaslik,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CustomIconAltin(
            iconData: Icons.delete,
            onPressed: () {},
          ),
          CustomIconAltin(
            iconData: Icons.edit,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.01,
              ),
              color: Color(0xFFEAEAEA),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
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
                  Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.04,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        "Vadesi geçen 182 gün",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
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
                                color: Color.fromRGBO(117, 117, 117, 1),
                              ),
                              SizedBox(width: 8),
                              Column(
                                children: [
                                  Text(
                                    "Fatura Tarihi",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(117, 117, 117, 1),
                                    ),
                                  ),
                                  Text(
                                    "27/11/2023",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromRGBO(117, 117, 117, 1),
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
                                color: Color.fromRGBO(117, 117, 117, 1),
                              ),
                              SizedBox(width: 8),
                              Column(
                                children: [
                                  Text(
                                    "Vade Tarihi",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(117, 117, 117, 1),
                                    ),
                                  ),
                                  Text(
                                    "27/11/2023",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromRGBO(117, 117, 117, 1),
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
                                      color: Color.fromRGBO(117, 117, 117, 1),
                                    ),
                                  ),
                                  Text(
                                    "140,400 GR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color.fromRGBO(117, 117, 117, 1),
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
                                      color: Color.fromRGBO(117, 117, 117, 1),
                                    ),
                                  ),
                                  Text(
                                    "94,900 GR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.red,
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
                      CustomIconAltin(
                        iconData: Icons.local_shipping,
                        onPressed: () {},
                      ),
                      CustomIconAltin(
                        iconData: Icons.print,
                        onPressed: () {},
                      ),
                      CustomIconAltin(
                        iconData: Icons.share,
                        onPressed: () {},
                      ),
                      CustomIconAltin(
                        iconData: Icons.copy_sharp,
                        onPressed: () {},
                      ),
                      CustomIconAltin(
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
                border: Border.all(color: Color(0xff8ED3E8), width: 0.5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(TahsilatScreen());
                    },
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff8ED3E8),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CustomIconAltin(
                                    iconData: Icons.account_balance_wallet,
                                    onPressed: () {},
                                  ),
                                ),
                                const Text(
                                  'Ödeme Tahsil Et',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  UrunEkleBorderSaveAnimasyonsuzAltin(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    //route: const UrunHizmetSecScreen(),
                    // text: "Ürün / Hizmet Ekle",
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.94,
                      child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text("Fatura açıklaması; ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: yTextColor,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                  const ToplamTutarSave(
                    textLabels: [
                      "Genel Toplam:",
                      'Ara Toplam:',
                      'İndirim:',
                      'Toplam İndirim:',
                      'Toplam:',
                      'Ek Vergi:',
                      'Toplam KDV:',
                    ],
                    textValues: [
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconAltin extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  CustomIconAltin({required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: Color(0xff8ED3E8),
        ),
      ),
    );
  }
}
