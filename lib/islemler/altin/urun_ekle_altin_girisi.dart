import 'package:efaturamobileapp/indirim_widget.dart';
import 'package:efaturamobileapp/islemler/components/dropdownmenu_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/sliding_widget.dart';
import 'package:efaturamobileapp/islemler/components/texfield_widget.dart';
import 'package:efaturamobileapp/toplam_tutar_save.dart';
import 'package:flutter/material.dart';
import '../../../active_switch.dart';
import '../../../bottom_app_bar_design.dart';
import '../../../constants.dart';
import '../../../custom_pop_menu.dart';
import '../../../text_field_decoration.dart';

class UrunEkleAltinGirisi extends StatefulWidget {
  const UrunEkleAltinGirisi({Key? key}) : super(key: key);

  @override
  State<UrunEkleAltinGirisi> createState() => _UrunEkleAltinGirisiState();
}

class _UrunEkleAltinGirisiState extends State<UrunEkleAltinGirisi> {
  TextEditingController kurController = TextEditingController();
  bool showDiscountAndTaxButtons = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<String> items = <String>[
      'Ürün1',
      'Ürün2',
      'Ürün3',
      'Ürün4',
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
      '333',
      '375',
      '417',
      '585',
      '750',
      '800',
      '875',
      '916',
      '1000',
    ];
    List<String> items3 = <String>[
      'Oransal',
      'Tutarsal',
    ];
    List<String> items4 = <String>[
      'Gram (gr)',
      'Kilogram (kg)',
      'Santigram (cg)',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ürün Ekle (Altın) Girişi',
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
                    width: screenWidth * 0.9,
                    items: items,
                    text: "Ürün Seç",
                    findText: "Ürün Ara",
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
                              text: "Ürün Açıklaması",
                              widthFactor: 0.5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldWidget(
                              text: "Kur",
                              widthFactor: 0.3,
                              onChanged: (value) {
                                setState(() {
                                  showDiscountAndTaxButtons = value.isNotEmpty;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldWidget(
                              text: "Kur",
                              widthFactor: 0.25,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      CustomDropdownButton(
                        items: items4,
                        text: "Birim",
                        findText: "Birim Ara",
                      ),
                      const SizedBox(width: 12),
                      CustomDropdownButton(
                        items: items2,
                        text: "Milyem",
                        findText: "Milyem Ara",
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      CustomDropdownButton(
                        items: items3,
                        text: "İşçilik Tipi",
                        findText: "Milyem Ara",
                      ),
                      const SizedBox(width: 12),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldWidget(
                              text: "Oran & Tutar",
                              widthFactor: 0.25,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      CustomDropdownButton(
                        items: items1,
                        text: "Tutar Para Birimi",
                        findText: "Ara",
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showDiscountAndTaxButtons)
                        IndirimWidget(
                          buttonText: 'İndirim',
                          dialogTitle: 'İndirim',
                          option1Text: 'Tutar (TL)',
                          option2Text: 'Oran',
                          icon: Icons.add_circle,
                        ),
                      if (showDiscountAndTaxButtons)
                        IndirimWidget(
                          buttonText: 'Vergiler',
                          dialogTitle: 'Vergi',
                          option1Text: 'Tutar (TL)',
                          option2Text: 'Oran',
                          icon: Icons.add_circle,
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
