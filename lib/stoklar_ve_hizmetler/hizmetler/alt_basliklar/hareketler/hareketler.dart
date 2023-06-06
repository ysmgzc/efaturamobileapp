import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/hareketlerdetayliarama.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';

class HizmetlerDanismanlikHareketler extends StatefulWidget {
  const HizmetlerDanismanlikHareketler({Key? key}) : super(key: key);

  @override
  State<HizmetlerDanismanlikHareketler> createState() => _HizmetlerDanismanlikHareketlerState();
}

class _HizmetlerDanismanlikHareketlerState extends State<HizmetlerDanismanlikHareketler> {
  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Danışmanlık Giderleri', style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const HareketlerDetayliArama(),
              ),
               SheetOption(
                icon: Image.asset('assets/icons/excelicon.png',width: 20,height: 20,),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),

   
        ),
      ),
    );
  }
}
