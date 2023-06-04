import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/giderler/hizmet_masraf_ekle.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/giderler/hizmet_masraf_save.dart';
import 'package:efaturamobileapp/giderler/secenekler/giderlerdetayliarama.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';

import '../bottom_show_dialog_widget.dart';
import '../home_screen/home_page_screen.dart';
import '../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class GiderlerScreen extends StatefulWidget {
  const GiderlerScreen({Key? key}) : super(key: key);

  @override
  State<GiderlerScreen> createState() => _GiderlerScreenState();
}

class _GiderlerScreenState extends State<GiderlerScreen> {
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
          'Giderler', style: TextStyle(color: Colors.black)
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const GiderlerDetayliArama(),
              ),
               SheetOption(
                icon:const Icon(Icons.find_in_page,color: Colors.black),
                text: 'Muhasebe Notu',
                page: const YeniRaporEkle(),
              ),
                 SheetOption(
                icon: Image.asset('assets/icons/excelicon.png',width: 20,height: 20,),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.attachment,color: Colors.black),
                text: "Ek'leri İndir",
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.delete,color: Colors.black),
                text: 'Sil',
                page: const HomePageScreen(),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const SearchField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            Container(
    padding: const EdgeInsets.all(8.0),
    decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset:const Offset(0, 0),
                    blurRadius: 20,
                    color:  Colors.grey.shade300,
                  ),
                ],
              ),
                child: const Column(
                  children: [ 
                     ContainerWidget(
                        icon: Icons.attachment,
                        tedarikciAdi:'Personel Ahmet Usta' ,
                        tedarikciNo: '000001',
                        odemeVadesi: 'Ödeme Vadesi: 31 MAYIS',
                        tarih: '24 Nisan',
                        paraBirimi: '₺1000',
                        durumuSag: 'Ödenecek',
                        page: HizmetMasrafSave(),
                        ),
                  ],
                ),     
          )],
          ),
        ),
      ),
       floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HizmetMasrafEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
