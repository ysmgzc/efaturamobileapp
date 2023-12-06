import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/indirim_widget.dart';
import 'package:efaturamobileapp/islemler/components/dropdownmenu_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/components/tarih_widget.dart';
import 'package:efaturamobileapp/islemler/components/texfield_widget.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmet_ekle.dart';
import 'package:flutter/material.dart';
import '../kamera_showdialog_widget.dart';
import '../urunekleborder.dart';

enum OdemeDurumu { odendi, odenecek }

enum Indirim { tutar, oran }

class HizmetMasrafEkle extends StatefulWidget {
  const HizmetMasrafEkle({Key? key}) : super(key: key);

  @override
  State<HizmetMasrafEkle> createState() => _HizmetMasrafEkleState();
}

class _HizmetMasrafEkleState extends State<HizmetMasrafEkle> {
  TextEditingController dateInput = TextEditingController();
  Indirim? _seciliIndirim = Indirim.tutar;
  final _textFieldController1 = TextEditingController();
  final _textFieldController2 = TextEditingController();
  OdemeDurumu? _seciliOdemeDurumu;
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
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: color6,
            ),
            onPressed: () {
              kameraShowDialogWidget(context);
            },
          ),
          title: const Text(
            'Hizmet & Masraf',
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: RectangleButtonWidget(
                      text: "Mal & Hizmet Veren",
                      textColor: color6,
                      bgColor: color8,
                      iconColor: color6,
                      route: MusterilerTedarikcilerScreen(
                        secim: 1,
                        appBarBaslik: "",
                      ),
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
                            TextFieldWidget(
                              text: "Fiş & Fatura No",
                              widthFactor: 0.42,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      CustomDatePickerAltin(
                        labelText: "Tarih ",
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      const Text("Ödeme Durumu",
                          style: TextStyle(color: color6)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<OdemeDurumu>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                "Ödendi",
                                style: TextStyle(fontSize: 13),
                              ),
                              value: OdemeDurumu.odendi,
                              activeColor: color6,
                              groupValue: _seciliOdemeDurumu,
                              onChanged: (OdemeDurumu? value) {
                                if (value != null) {
                                  setState(() {
                                    _seciliOdemeDurumu = value;
                                  });
                                }
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<OdemeDurumu>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                "Ödenecek",
                                style: TextStyle(fontSize: 13),
                              ),
                              value: OdemeDurumu.odenecek,
                              activeColor: color6,
                              groupValue: _seciliOdemeDurumu,
                              onChanged: (OdemeDurumu? value) {
                                if (value != null) {
                                  setState(() {
                                    _seciliOdemeDurumu = value;
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDatePickerAltin(
                          labelText: "Ödeme Vadesi ",
                          width: 0.6,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  CustomDropdownButton(
                    items: items,
                    text: "Para Birimi",
                    findText: "Birim Ara",
                    width: 0.35,
                  ),
                  const Divider(),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFieldWidget(
                          text: "Açıklama",
                          widthFactor: 0.9,
                          heightFactor: 0.07,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      UrunEkleBorder(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        scanicon: false,
                        route: const HizmetEkle(),
                        text: "Hizmet Ekle",
                        width: 0.7,
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                        width: screenWidth * 0.1,
                        child: IconButton(
                          icon: const Icon(Icons.camera_alt, color: color6),
                          onPressed: () {
                            kameraShowDialogWidget(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      TextFieldWidget(
                        text: "Kategori",
                        widthFactor: 0.6,
                      ),
                      //Expanded(child: Container()),
                      IndirimWidget(
                        buttonText: 'İndirim Uygula',
                        dialogTitle: 'İndirim',
                        option1Text: 'Tutar (TL)',
                        option2Text: 'Oran',
                      ),
                    ],
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
