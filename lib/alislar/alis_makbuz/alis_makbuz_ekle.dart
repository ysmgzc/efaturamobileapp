import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/person_image_border.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../text_field_decoration.dart';

class AlisMakbuzEkle extends StatefulWidget {
  const AlisMakbuzEkle({Key? key}) : super(key: key);

  @override
  State<AlisMakbuzEkle> createState() => _AlisMakbuzEkleState();
}

class _AlisMakbuzEkleState extends State<AlisMakbuzEkle> {
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
  String? selectedValue1;
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
        title: const Text(
          'Serbest Meslek Makbuzu',
          style: TextStyle(color: Colors.black),
        ),
         automaticallyImplyLeading: false, 
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                      child: PersonImageBorder(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        route: const MusterilerTedarikcilerScreen(),
                        text: "Tedarikci ekle",
                        assetPath: 'assets/icons/personicon.png',
                      ),
                    ),
                 // const  SizedBox(height: 60,)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                //  height: screenHeight * 0.35,
                //  width: screenWidth * 0.47,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'BELGE NUMARASI',
                          style: TextStyle(fontSize: 14, color: Color(0XFFCE4D56), fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '---',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                          'İŞLEM TARİHİ',
                          style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
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
                              DateFormat('dd MM yyyy').format(DateTime.now()),
                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: yTextColor),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              DateFormat('HH:mm').format(DateTime.now()),
                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: yTextColor),
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
                          style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          DateFormat('dd MM yyyy').format(DateTime.now()),
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: yTextColor),
                        ),
                      ),
                      const Divider(
                        indent: 45,
                        endIndent: 40,
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),

          Container(
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
                      const Text('BRÜT TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                       TextFieldDecoration(
                        screenWidth: screenWidth, 
                        screenHeight: screenHeight,
                        hintText: "0,00",
                        ),
                         const SizedBox(height: 8),
                  const Divider(),
                      const Text('NET TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                       TextFieldDecoration(
                        screenWidth: screenWidth, 
                        screenHeight: screenHeight,
                        hintText: "0,00",
                        ),
                         const SizedBox(height: 8),
                  const Divider(),
                      const Text('TAHSİLAT EDİLECEK TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
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
const SizedBox(height: 5,),
       
              Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                          const Text('STOPAJ ORANI', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                          const Text('GELİR VERGİSİ STOPAJI', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                          const Text('FON PAYI', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                          const Text('FON PAYI', style: TextStyle(color: yTextColor, fontSize: 14)),
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
       ),   const Divider(),
        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('KATEGORİ', style: TextStyle(color: yTextColor, fontSize: 14)),
                          const SizedBox(height: 8),
                          TextFieldDecoration(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                          ),
                        ],
                      ),   const Divider(),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('AÇIKLAMA', style: TextStyle(color: yTextColor, fontSize: 14)),
                          const SizedBox(height: 8),
                          TextFieldDecoration(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            heightFactor: 0.14,
                          ),
                        ],
                      ),SizedBox(height: screenHeight*0.02,),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

