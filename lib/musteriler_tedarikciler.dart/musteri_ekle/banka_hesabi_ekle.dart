import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/constants.dart';

import '../../custom_pop_menu.dart';

class BankaHesabiEkleScreen extends StatefulWidget {
  const BankaHesabiEkleScreen({Key? key}) : super(key: key);

  @override
  State<BankaHesabiEkleScreen> createState() => _BankaHesabiEkleScreenState();
}

class _BankaHesabiEkleScreenState extends State<BankaHesabiEkleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:const Color(0xff8FAD4B),
        title: const Text('Banka Hesabı Ekle'),
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
                    child: Image.asset('assets/icons/drawericon/musteritedarikciicon.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Banka Başlığı', style: TextStyle(color: Colors.white, fontSize: 14)),
                      const SizedBox(height: 8),
                      Container(
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
                    const Text('ŞUBE ADI*', style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                      const Divider(),
                       CustomPopMenuWidget(
                       width: screenWidth * 0.9,
                       height: screenHeight * 0.07,
                       title: "PARA BİRİMİ",
                       menuWidth: screenWidth * 0.9,
                       selectedValue: "TL",
                       items: items,
                       menuItemsWidth: screenWidth * 0.9, 
                           ),
                    const Divider(),
                    const Text('HESAP NUMARASI*', style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                       const Divider(),
                    const Text('IBAN', style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight,hintText: "TR"),
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
