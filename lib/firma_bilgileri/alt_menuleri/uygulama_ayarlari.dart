
import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:flutter/material.dart';

class UygulamaAyarlariScreen extends StatefulWidget {
  const UygulamaAyarlariScreen({Key? key}) : super(key: key);

  @override
  State<UygulamaAyarlariScreen> createState() => _UygulamaAyarlariScreenState();
}

class _UygulamaAyarlariScreenState extends State<UygulamaAyarlariScreen> {
  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
     List<String> items = <String>[
      'Türkçe',
      'English',
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, 
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Uygulama Ayarları', style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
         padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
             Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'SATIŞ FİYATI',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                  CustomPopMenuWidget(
                width: screenWidth * 0.9,
                height: screenHeight * 0.07,
                title: "",
                menuWidth: screenWidth * 0.9,
                selectedValue: "Türkçe",
                items: items,
                menuItemsWidth: screenWidth * 0.9,
                    ),
                   const Divider(),
                 Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'SESLİ FATURA',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                 const SizedBox(height: 15),
                 Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Sesli Fatura',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                   const Icon(Icons.help, color: Colors.black),
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
                  const Divider(),
               /*  Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'ALT MENÜ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                 const SizedBox(height: 15),
                 Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Alt Menü',
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
                  const Divider(),*/
          ],
        ),
      ),
    
    );
  }
}
