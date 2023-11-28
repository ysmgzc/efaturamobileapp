import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/data/urun_hizmet_model.dart';
import 'package:efaturamobileapp/person_image_border_save.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_hizmet_sec_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_alt%C4%B1n/urun_hizmet_sec_screen_altin.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/toplam_tutar_save.dart';
import 'package:efaturamobileapp/urun_ekle_border_save_animasyonsuz.dart';
import 'package:efaturamobileapp/urunekleborder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import '../person_image_border.dart';
import 'package:get/get.dart';

class FormScreenEkle extends StatefulWidget {
  String personImageBorderMetin;
  String appBarBaslik;
  FormScreenEkle(
      {required this.appBarBaslik, required this.personImageBorderMetin});

  @override
  State<FormScreenEkle> createState() => _FormScreenEkleState();
}

class _FormScreenEkleState extends State<FormScreenEkle> {
  String selectedCurrency = 'TL';
  bool showKur = false;

  RxList<UrunHizmetModel> urunListesi = [
    UrunHizmetModel(
        baslik: "Tekstil Hammadde",
        altbaslikBirim: '100 KG',
        altbaslikFiyat: "25,00TL",
        ustText: "KDV(%18)",
        altText: "EK VERGİ",
        ustTextFiyat: '₺450,00',
        altTextFiyat: '₺0,00',
        sagTextFiyat: '₺0,00',
        araToplamFiyat: '₺20,00',
        sagText: "İNDİRİM"),
  ].obs;

  int secim = 0;
  int menu = 0;
  int iadeSagBilgi = 0;
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {
      if (widget.appBarBaslik == "Serbest Meslek Makbuzu") {
        secim = 1;
      } else if (widget.appBarBaslik == "İade Faturası") {
        iadeSagBilgi = 1;
      } else if ([
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
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          widget.appBarBaslik,
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                      child: widget.personImageBorderMetin == ""
                          ? PersonImageBorder(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              route: MusterilerTedarikcilerScreen(
                                secim: 1,
                                appBarBaslik: widget.appBarBaslik,
                              ),
                              text: "Müşteri Ekle",
                              assetPath: 'assets/icons/personicon.png',
                            )
                          : PersonImageBorderSave(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              text: widget.personImageBorderMetin,
                              assetPath: 'assets/icons/personicon.png',
                            ),
                    ),
                    secim == 0
                        ? Padding(
                            padding: const EdgeInsets.only(left: 15, top: 3),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomPopMenuWidget(
                                  width: screenWidth * 0.25,
                                  title: "DÖVİZ",
                                  menuWidth: screenWidth * 0.25,
                                  selectedValue: selectedCurrency,
                                  items: items,
                                  menuItemsWidth: screenWidth * 0.25,
                                  dividerIndent: 0,
                                  dividerEndIndent: 0,
                                  showDivider: true,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedCurrency = value;
                                      showKur = true;
                                    });
                                  },
                                ),
                                const SizedBox(width: 8),
                                if (showKur && selectedCurrency.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 14),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(' KUR',
                                            style: TextStyle(
                                                color: yTextColor,
                                                fontSize: 14)),
                                        const SizedBox(height: 8),
                                        TextFieldDecoration(
                                          screenWidth: screenWidth,
                                          widthFactor: 0.2,
                                          screenHeight: screenHeight,
                                          heightFactor: 0.07,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(),
                          ),
                    Container(
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.04,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: color2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          "Vadesi geçen 182 gün",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    // height: screenHeight * 0.35,
                    // width: screenWidth * 0.47,
                    color: Colors.white,
                    child: iadeSagBilgi == 0
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'FATURA NUMARASI',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0XFFCE4D56),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '---',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                indent: 45,
                                endIndent: 40,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'FATURA TARİHİ',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      // DateFormat('dd MMMM yyyy', 'tr_TR')
                                      DateFormat('dd MM yyyy')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: yTextColor),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      DateFormat('HH:mm')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: yTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                indent: 45,
                                endIndent: 40,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'VADE TARİHİ',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  DateFormat('dd MM yyyy')
                                      .format(DateTime.now()),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: yTextColor),
                                ),
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'FATURA NUMARASI',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0XFFCE4D56),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '---',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                indent: 45,
                                endIndent: 40,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'FATURA TARİHİ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      DateFormat('dd MM yyyy')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: yTextColor),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      DateFormat('HH:mm')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: yTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                indent: 45,
                                endIndent: 40,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'ALIŞ FATURA NUMARASI',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0XFFCE4D56),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '---',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                indent: 45,
                                endIndent: 40,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'ALIŞ FATURA TARİHİ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      DateFormat('dd MM yyyy')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: yTextColor),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      DateFormat('HH:mm')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: yTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                indent: 45,
                                endIndent: 40,
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'VADE TARİHİ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  DateFormat('dd MM yyyy')
                                      .format(DateTime.now()),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: yTextColor),
                                ),
                              ),
                              const SizedBox(
                                height: 90,
                              )
                            ],
                          ),
                  ),
                ),
              ],
            ),
            secim == 0
                ? Column(
                    children: [
                      menu == 0
                          ? UrunEkleBorder(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              route: const UrunHizmetSecScreen(),
                              text: "Ürün / Hizmet Ekle",
                            )
                          : UrunEkleBorder(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              route: const UrunHizmetSecAltinScreen(),
                              text: "Ürün / Hizmet Ekle",
                            ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 200,
                        child: Obx(
                          () => Column(
                            children: urunListesi.map((UrunHizmetModel urun) {
                              return Column(
                                children: [
                                  UrunEkleBorderSaveAnimasyonsuz(
                                    screenHeight: screenHeight,
                                    screenWidth: screenWidth,
                                    baslik: urun.baslik,
                                    altbaslikBirim: urun.altbaslikBirim,
                                    altbaslikFiyat: urun.altbaslikFiyat,
                                    ustText: urun.ustText,
                                    altText: urun.altText,
                                    ustTextFiyat: urun.ustTextFiyat,
                                    altTextFiyat: urun.altTextFiyat,
                                    sagTextFiyat: urun.sagTextFiyat,
                                    araToplamFiyat: urun.araToplamFiyat,
                                    sagText: urun.sagText,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      const Divider(),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: ToplamTutarSave(
                              textLabels: [
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                    ],
                  )
                : Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenHeight * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomPopMenuWidget(
                          width: screenWidth * 0.9,
                          title: "DÖVİZ",
                          menuWidth: screenWidth * 0.9,
                          selectedValue: "TL",
                          items: items,
                          menuItemsWidth: screenWidth * 0.9,
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const Text('BRÜT TUTAR',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          hintText: "0,00",
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const Text('NET TUTAR',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          hintText: "0,00",
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const Text('TAHSİLAT EDİLECEK TUTAR',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          hintText: "0,00",
                        ),
                        const Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomPopMenuWidget(
                              width: screenWidth * 0.3,
                              title: "KDV ORANI",
                              menuWidth: screenWidth * 0.3,
                              selectedValue: "18",
                              items: items1,
                              menuItemsWidth: screenWidth * 0.2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('TUTAR',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  widthFactor: 0.6,
                                  hintText: '0,00',
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('STOPAJ ORANI',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  widthFactor: 0.3,
                                  hintText: '20,00',
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('GELİR VERGİSİ STOPAJI',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  widthFactor: 0.6,
                                  hintText: '0,00',
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('FON PAYI',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  widthFactor: 0.3,
                                  hintText: '0,00',
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('FON PAYI',
                                    style: TextStyle(
                                        color: yTextColor, fontSize: 14)),
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  widthFactor: 0.6,
                                  hintText: '0,00',
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('KATEGORİ',
                                style:
                                    TextStyle(color: yTextColor, fontSize: 14)),
                            const SizedBox(height: 8),
                            TextFieldDecoration(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                            ),
                          ],
                        ),
                        const Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('AÇIKLAMA',
                                style:
                                    TextStyle(color: yTextColor, fontSize: 14)),
                            const SizedBox(height: 8),
                            TextFieldDecoration(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              heightFactor: 0.14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
              child: Container(
                height: 200,
                child: Obx(
                  () => ListView.builder(
                    itemCount: urunListesi.length,
                    itemBuilder: (context, index) {
                      UrunHizmetModel urun = urunListesi[index];
                      return UrunEkleBorderSaveAnimasyonsuz(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        baslik: urun.baslik,
                        altbaslikBirim: urun.altbaslikBirim,
                        altbaslikFiyat: urun.altbaslikFiyat,
                        ustText: urun.ustText,
                        altText: urun.altText,
                        ustTextFiyat: urun.ustTextFiyat,
                        altTextFiyat: urun.altTextFiyat,
                        sagTextFiyat: urun.sagTextFiyat,
                        araToplamFiyat: urun.araToplamFiyat,
                        sagText: urun.sagText,
                      );
                    },
                  ),
                ),
              ),
            ),
            /*  UrunEkleBorderSaveAnimasyonsuz(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              //route: const UrunHizmetSecScreen(),
             // text: "Ürün / Hizmet Ekle",
              baslik: "Tekstil Hammade",
              altbaslikBirim: '100 KG',
              altbaslikFiyat: "25,00TL",
              ustText: "KDV(%18)",
              altText: "EK VERGİ",
              ustTextFiyat: '₺450,00',
              altTextFiyat: '₺0,00',
              sagTextFiyat: '₺0,00',
              araToplamFiyat: '₺20,00',
              sagText: "İNDİRİM",
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),*/
          ],
        ),
      ),
    );
  }
}
