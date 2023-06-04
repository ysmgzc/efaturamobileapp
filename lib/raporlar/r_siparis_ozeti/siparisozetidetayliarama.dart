
import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

class SiparisOzetiDetayliArama extends StatefulWidget {
  const SiparisOzetiDetayliArama({super.key});

  @override
  State<SiparisOzetiDetayliArama> createState() => _SiparisOzetiDetayliAramaState();
}

class _SiparisOzetiDetayliAramaState extends State<SiparisOzetiDetayliArama> {
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
//-------------------Sipariş Durumu-----------------------------------------------------------
        DetayliAramaWidget(
            metin: "Sipariş Durumu",
            altMetin:"Tümü",
           onTap: () {
            showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Tür",
      checkboxTexts:const [
        "Kapanmış",
        "Bekleyen",
        "İptal",
        "Sevk Ediliyor",
      ],
    );
  },
);}, ),
//---------------------Ödeme Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Ödeme Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Ödeme Durumu",
      checkboxTexts:const [
        "Ödemeli",
        "Ödemesiz",
      ],
    );
  },
); }, ),
//----------------------Tutar------------------------------------------------------
          DetayliAramaWidget(
            metin: "Tutar",
            altMetin:"Tümü",
            onTap: () {
               showDialog(
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


        ],)
           
        ),
      ),
    bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        text: "SONUÇLARI GÖSTER",
        backgroundColor: Colors.blue,
          ),
    );
  }

 
}