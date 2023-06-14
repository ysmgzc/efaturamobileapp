
import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:flutter/material.dart';

import '../../../active_switch.dart';
import '../../../bottom_app_bar_desing_save.dart';
import '../../../constants.dart';
import '../../../custom_pop_menu.dart';
import '../../../detayli_arama_screen.dart';
import '../../../text_field_decoration.dart';

class AlisFaturasiDetayliArama extends StatefulWidget {
  const AlisFaturasiDetayliArama({super.key});

  @override
  State<AlisFaturasiDetayliArama> createState() => _AlisFaturasiDetayliAramaState();
}

class _AlisFaturasiDetayliAramaState extends State<AlisFaturasiDetayliArama> {
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
         iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        title:const Text(
          'Detaylı Arama',style: TextStyle(color: Colors.black),
        ),
      ),
    
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
        child:Column(children: [
//------------------------"İşlem Tipi"------------------------------------------
               DetayliAramaWidget(
                altMetin:"Tümü",
              metin: "İşlem Tipi",
               onTap: () {
                    showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "İşlem Tipi",
      checkboxTexts: [
        "Perakede Satış Faturası",
        "Toptan Satış Faturası",
      ],
    );
  },
);  
      },  ),
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
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Ödenmemiş Faturalar',
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

//---------------------Vade Tarihi-------------------------------------------------
          DetayliAramaWidget(
            metin: "Vade Tarihi",
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
            altMetin:"Tümü",
          ),
//----------------------Tutar------------------------------------------------------
          DetayliAramaWidget(
            metin: "Tutar",
            altMetin:"Tümü",
            onTap: () { showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Tutar'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('MİN TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                        hintText: "0,00",
                      ),
               const Divider(),
                 const Text('MAX TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                        hintText: "0,00",
                      ),
              const  Divider(),
                CustomPopMenuWidget(
                  width: screenWidth * 0.65,
                  height: screenHeight * 0.07,
                  title: "PARA BİRİMİ",
                  menuWidth: screenWidth * 0.65,
                  selectedValue: "TL",
                  items: items,
                  menuItemsWidth: screenWidth * 0.65,
                ),
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Temizle'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); // Dialog penceresini kapat
          },
        ),
      ],
        );
      },
    );
  },
          ),
//---------------------Kategori--------------------------------------------------------------
          DetayliAramaWidget(
            metin: "Kategori",
            altMetin:"Tümü",
            onTap: () { showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Kategori'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                      ),
              const  Divider(),
                
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Vazgeç'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); 
        },
        ),
      ],
        );
      },
    );
  },
          ),
//---------------------Hizmet Grubu-----------------------------------------------------------
          DetayliAramaWidget(
            metin: "Hizmet Grubu",
            onTap: () {},
            altMetin:"Tümü",
          ),

//---------------------Muhsasebe Notu-----------------------------------------------------------
          DetayliAramaWidget(
            metin: "Muhsasebe Notu",
            altMetin:"Tümü",
            onTap: () {
                 showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Muhsasebe Notu",
      checkboxTexts: [
        "İşlem bekliyor",
        "Muhasebeleşti",
        "Kaydedilmedi",
        "Muhasebeleşmeyecek",
      ],
    );
  },
);  
      },   ),


        ],)
           
        ),
      ),
    bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonText: "SONUÇLARI GÖSTER",
        saveButtonBackgroundColor: Colors.blue,
          ),
    );
  }

 
}