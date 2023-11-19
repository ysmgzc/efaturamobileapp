import 'package:efaturamobileapp/indirim_widget.dart';
import 'package:efaturamobileapp/toplam_tutar_save.dart';
import 'package:flutter/material.dart';
import '../../../../active_switch.dart';
import '../../../../bottom_app_bar_design.dart';
import '../../../../constants.dart';
import '../../../../custom_pop_menu.dart';
import '../../../../text_field_decoration.dart';

class UrunEkleAltin extends StatefulWidget {
  const UrunEkleAltin({Key? key}) : super(key: key);

  @override
  State<UrunEkleAltin> createState() => _UrunEkleAltinState();
}

class _UrunEkleAltinState extends State<UrunEkleAltin> {
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
      'İşçilik Yok',
      'İşçilik Var',
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Ürün Ekle (Altın)',
          style: TextStyle(color: Colors.black),
        ),
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
              CustomPopMenuWidget(
                width: screenWidth * 0.9,
                title: "ÜRÜN SEÇ",
                menuWidth: screenWidth * 0.9,
                selectedValue: "Ürün1",
                items: items,
                menuItemsWidth: screenWidth * 0.9,
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
                        const Text('ÜRÜN AÇIKLAMASI',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          widthFactor: 0.6,
                          screenHeight: screenHeight,
                          heightFactor: 0.07,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(' KUR',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          controller: kurController,
                          screenWidth: screenWidth,
                          widthFactor: 0.3,
                          screenHeight: screenHeight,
                          heightFactor: 0.07,
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
                        const Text('MİKTAR *',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          widthFactor: 0.3,
                          screenHeight: screenHeight,
                          heightFactor: 0.07,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  CustomPopMenuWidget(
                    width: screenWidth * 0.25,
                    title: "BİRİM",
                    menuWidth: screenWidth * 0.25,
                    selectedValue: "TL",
                    items: items1,
                    menuItemsWidth: screenWidth * 0.25,
                  ),
                  const SizedBox(width: 15),
                  CustomPopMenuWidget(
                    width: screenWidth * 0.25,
                    title: "MİLYEM",
                    menuWidth: screenWidth * 0.25,
                    selectedValue: "333",
                    items: items2,
                    menuItemsWidth: screenWidth * 0.25,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                children: [
                  CustomPopMenuWidget(
                    width: screenWidth * 0.25,
                    title: "İŞÇİLİK TİPİ",
                    menuWidth: screenWidth * 0.25,
                    selectedValue: "İşçilik Yok",
                    items: items3,
                    menuItemsWidth: screenWidth * 0.25,
                  ),
                  const SizedBox(width: 15),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ORAN & TUTAR',
                            style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          widthFactor: 0.3,
                          screenHeight: screenHeight,
                          heightFactor: 0.07,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  CustomPopMenuWidget(
                    width: screenWidth * 0.25,
                    title: "TUTAR PARA BİRİM",
                    menuWidth: screenWidth * 0.25,
                    selectedValue: "TL",
                    items: items1,
                    menuItemsWidth: screenWidth * 0.25,
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
              const Divider(),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: ToplamTutarSave(
                  textLabels: [
                    'Toplam İşçilik Tuatarı:',
                    'Toplam Miktar:',
                    'İndirim:',
                    'Yuvarlama:',
                    'Hesaplanan Vergiler:',
                    'Vergiler Dahil Toplam:',
                    'Etiket / Açıklamalar:',
                    'Notlar:',
                  ],
                  textValues: [
                    '₺0.00',
                    '₺0.00',
                    '₺0.00',
                    '₺0.00',
                    '₺0.00',
                    '₺0.00',
                    '',
                    '',
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        children: [
                          Text(
                            'Vergiler Dahil Tutar',
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
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor: const Color(0xffD9B26D),
        saveButtonText: "+EKLE",
      ),
    );
  }
}
