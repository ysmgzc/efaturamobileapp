
import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

class SatisOzetiDetayliArama extends StatefulWidget {
  const SatisOzetiDetayliArama({super.key});

  @override
  State<SatisOzetiDetayliArama> createState() => _SatisOzetiDetayliAramaState();
}

class _SatisOzetiDetayliAramaState extends State<SatisOzetiDetayliArama> {
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
    return ShowDialogCheckBox(
      dialogTitle: "İşlem Tipi",
      checkboxTexts:const [
        "Perakede Satış Faturası",
        "Toptan Satış Faturası",
      ],
    );
  },
);  
      },  ),
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
//---------------------Müşteri Sec-------------------------------------------------
          DetayliAramaWidget(
            metin: "Müşteri Se.",
            altMetin:"Tümü",
            onTap: () {
               Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MusterilerTedarikcilerScreen()),
        );
            },
            
          ),
//------------------------"Tür"------------------------------------------
               DetayliAramaWidget(
                altMetin:"Tümü",
              metin: "Tür",
               onTap: () {
                    showDialog(
  context: context,
  builder: (BuildContext context) {
    return ShowDialogCheckBox(
      dialogTitle: "Tür",
      checkboxTexts:const [
        "Ürün",
        "Hizmet",
      ],
    );
  },
);  
      },  ),
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