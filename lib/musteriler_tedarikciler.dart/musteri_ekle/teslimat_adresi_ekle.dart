import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/constants.dart';

import '../../custom_pop_menu.dart';

class TeslimatAdresiEkleScreen extends StatefulWidget {
  const TeslimatAdresiEkleScreen({Key? key}) : super(key: key);

  @override
  State<TeslimatAdresiEkleScreen> createState() => _TeslimatAdresiEkleScreenState();
}

class _TeslimatAdresiEkleScreenState extends State<TeslimatAdresiEkleScreen> {
   String? selectedValue1;
    List<String> items1 = <String>[
      'Türkiye',
      'Almanya',
     
    ];
    String? selectedValue2;
    List<String> items2 = <String>[
      'Lütfen seçin...',
      'Ankara',
      'İstanbul',
     
    ];
    String? selectedValue3;
    List<String> items3 = <String>[
      'Lütfen seçin...',
      'Beypazarı',
      'Çankaya',
     
    ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:const Color(0xff8FAD4B),
        title: const Text('Teslimat Adresi Ekle'),
        centerTitle: true,
        automaticallyImplyLeading: false, 
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: const Color(0xff8FAD4B),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Image.asset('assets/icons/drawericon/locationicon.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Adres Başlığı', style: TextStyle(color: Colors.white, fontSize: 14)),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.07,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.01,
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
        const Text('ADRES*', style: TextStyle(color: yTextColor,fontSize: 14)),
        const SizedBox(height: 8),
        TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                heightFactor: 0.14, 
                ),
          ],
        ),
      ),
                    const Divider(),
                     CustomPopMenuWidget(
                       width: screenWidth * 0.9,
                       height: screenHeight * 0.07,
                       title: "ÜLKE*",
                       menuWidth: screenWidth * 0.9,
                       selectedValue: "Türkiye",
                       items: items1,
                       menuItemsWidth: screenWidth * 0.9, 
                           ),
              const Divider(),

              
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       CustomPopMenuWidget(
                       width: screenWidth * 0.4,
                       height: screenHeight * 0.07,
                       title: "İL*",
                       menuWidth: screenWidth * 0.35,
                       selectedValue: "Lütfen seçin...",
                       items: items2,
                       menuItemsWidth: screenWidth * 0.2, 
                           ),
                     
                    ],
                  ),
                  SizedBox( width:screenWidth * 0.1,),
                  CustomPopMenuWidget(
                       width: screenWidth * 0.4,
                       height: screenHeight * 0.07,
                       title: "İLÇE*",
                       menuWidth: screenWidth * 0.35,
                       selectedValue: "Lütfen seçin...",
                       items: items3,
                       menuItemsWidth: screenWidth * 0.2, 
                           ),
                ],
              ),
              const Divider(),
              const Text('AD SOYAD', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                const Divider(),
              const Text('TELEFON', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                const SizedBox(height: 25),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
      
     bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        backgroundColor:const Color(0xff8FAD4B),
         saveButtonFlex: 3, 
          ),
    );
  }
}
