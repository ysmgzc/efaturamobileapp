import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/toplam_tutar_save.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../person_image_border_save.dart';
import '../../stoklar_ve_hizmetler/urunler/urun_ekle.dart';
import '../../urun_ekle_border_save.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class AlisIadeFaturasiSave extends StatefulWidget {
  const AlisIadeFaturasiSave({Key? key}) : super(key: key);

  @override
  State<AlisIadeFaturasiSave> createState() => _AlisIadeFaturasiSaveState();
}

class _AlisIadeFaturasiSaveState extends State<AlisIadeFaturasiSave> {
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
  TextEditingController dateInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'İade Faturası',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false, 
         actions: [ 
          CustomIconButton(
            options: [
               SheetOption(
                icon:const Icon(Icons.currency_lira,color: Colors.black),
                text: 'Tahsilat Ekle',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.print,color: Colors.black),
                text: 'Yazdır',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.find_in_page,color: Colors.black),
                text: 'Muhasebe Notu',
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
               SheetOption(
                icon:const Icon(Icons.copy_sharp,color: Colors.black),
                text: 'Kopyala',
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
      
backgroundColor: Colors.white,
body: SingleChildScrollView(
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: IgnorePointer(
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                    child: PersonImageBorderSave(  
                      screenHeight: screenHeight, 
                      screenWidth: screenWidth,
                      text: "Deneme Satış Ltd. Şti",
                      assetPath: 'assets/icons/persongreenicon.png',
                      ),
                  ),
                 const SizedBox(height: 3,),
                    Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomPopMenuWidget(
                          width: screenWidth * 0.45,
                          height: screenHeight * 0.15,
                          title: "DÖVİZ",
                          menuWidth: screenWidth * 0.4,
                          selectedValue: "TL",
                          items: items,
                          menuItemsWidth: screenWidth * 0.2,
                          dividerIndent: 35,  
                          dividerEndIndent: 45,  
                          showDivider: true,  
                              ),
                        ),
                 
                      ],
                    ),
                    Expanded(
                      child: Container(
                      //  height: screenHeight * 0.38,
                      //  width: screenWidth * 0.47,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                         const   Align(
                              alignment: Alignment.center,
                              child: Text(
                                'FATURA NUMARASI',
                                style: TextStyle(fontSize: 14, color: Color(0XFFCE4D56), fontWeight: FontWeight.bold),
                              ),
                            ),
                          const  SizedBox(
                              height: 5,
                            ),
                          const  Align(
                              alignment: Alignment.center,
                              child: Text(
                                '0000000000001',
                                style: TextStyle(fontSize: 14,color: yTextColor),
                              ),
                            ),
                          const SizedBox( height: 5,),
                         const Divider( indent: 45,
                        endIndent: 40,),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'FATURA TARİHİ',
                                style: TextStyle(fontSize: 13, color:Colors.black),
                              ),
                            ),
                            const SizedBox( height: 5,),
                           Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  DateFormat('dd MM yyyy').format(DateTime.now()),
                                  style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:yTextColor),
                                ),
                                 const SizedBox( height: 8,),
                                Text(
                                  DateFormat('HH:mm').format(DateTime.now()),
                                  style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:yTextColor),
                                ),
                              ],
                            ),
                          ),
                          const Divider( indent: 45,
                        endIndent: 40,),
                           const  Align(
                              alignment: Alignment.center,
                              child: Text(
                                'ALIŞ FATURA NUMARASI',
                                style: TextStyle(fontSize: 14, color: Color(0XFFCE4D56), fontWeight: FontWeight.bold),
                              ),
                            ),
                          const  SizedBox(
                              height: 5,
                            ),
                          const  Align(
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 14, color: yTextColor),
                              ),
                            ),
                          const SizedBox( height: 5,),
                         const Divider( indent: 45,
                        endIndent: 40,),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'ALIŞ FATURA TARİHİ',
                                style: TextStyle(fontSize: 13, color:Colors.black,),
                              ),
                            ),
                            const SizedBox( height: 5,),
                           Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  DateFormat('dd MM yyyy').format(DateTime.now()),
                                  style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:yTextColor),
                                ),
                              const  SizedBox(height: 20,),
                              ],
                            ),
                          ),
                          
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
        UrunEkleBorderSave(
          screenHeight: screenHeight, 
          screenWidth: screenWidth, 
          route:const  UrunEkle(), 
          text: "Ürün / Hizmet Ekle",
          baslik: "Tekstil Hammade",
          altbaslikKG: '100 KİLOGRAM',
          altbaslikTL: "25,00TL",
          kdvFiyat: '₺450,00',
          ekVergiFiyat: '₺0,00',
          indirimFiyat: '₺0,00',
          araToplamFiyat: '₺20,00',
        ),
       IgnorePointer(
         child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: screenHeight * 0.07,
                    width: screenWidth * 0.94,
                  child:const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Fatura açıklaması; ",
                          style: TextStyle(
                            fontSize: 14,color: yTextColor,fontWeight: FontWeight.bold
                          ))),
                ),
              ),
       ),
      const ToplamTutarSave(
         textLabels: [
           'Ara Toplam:',
           'İndirim:',
           'Toplam İndirim:',
           'Toplam:',
           'Ek Vergi:',
           'Toplam KDV:',
         ],
         textValues: [
           '₺0.00',
           '₺0.00',
           '₺0.00',
           '₺0.00',
           '₺0.00',
           '₺0.00',
         ],
       ),

    ],
  ),
        
      ),
    );
  }
}
