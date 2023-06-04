import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../person_image_border_save.dart';
import '../../text_field_decoration.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class SatisMakbuzFaturasi extends StatefulWidget {
  const SatisMakbuzFaturasi({Key? key}) : super(key: key);

  @override
  State<SatisMakbuzFaturasi> createState() => _SatisMakbuzFaturasiState();
}

class _SatisMakbuzFaturasiState extends State<SatisMakbuzFaturasi> {
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
          actions: [ 
          CustomIconButton(
            options: [
               SheetOption(
                icon:const Icon(Icons.print,color: Colors.black),
                text: 'Yazdır',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.currency_lira,color: Colors.black),
                text: 'Tahsilat Ekle',
                page: const YeniRaporEkle(),
              ),
                SheetOption(
                icon:const Icon(Icons.copy_sharp,color: Colors.black),
                text: 'Kopyala',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.edit_document,color: Colors.black),
                text: 'Düzenle',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.delete,color: Colors.black),
                text: 'Sil',
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IgnorePointer(
          child: Column(children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
                      child: PersonImageBorderSave(  
                      screenHeight: screenHeight, 
                      screenWidth: screenWidth, 
                      text: "Test Satis Ltd. Şti.",
                      assetPath: 'assets/icons/persongreenicon.png',
                      ),
                  ),const SizedBox(height: 80,),
                  ],
                ),
                Container(
                  height: screenHeight * 0.28,
                  width: screenWidth * 0.5,
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
                          '0000000000000000001',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: yTextColor),
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
                          style: TextStyle(fontSize: 13, color: Colors.black,),
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
                          style: TextStyle(fontSize: 13, color: Colors.black,),
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
              ],
            ),
               const Text("Adres: Test Mah.", style: TextStyle(fontSize: 14, color: yTextColor)),
               const Text("İlçe: Zeytinburnu", style: TextStyle(fontSize: 14, color: yTextColor)),
               const Text("İl: İstanbul / Türkiye", style: TextStyle(fontSize: 14, color: yTextColor)),
        
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
                height: screenHeight * 0.07,
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
           children: [
                   CustomPopMenuWidget(
                width: screenWidth * 0.3,
                height: screenHeight * 0.07,
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
                        ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
