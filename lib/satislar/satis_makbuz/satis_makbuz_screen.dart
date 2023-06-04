
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/satislar/satis_makbuz/satis_makbuz_ekle.dart';
import 'package:efaturamobileapp/satislar/satis_makbuz/satis_makbuz_faturasi_save.dart';
import 'package:efaturamobileapp/satislar/satis_makbuz/secenekler/satismakbuzdetayliarama.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';

import '../../bottom_show_dialog_widget.dart';
import '../../container_widget.dart';
import '../../show_dialog_ekle.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class SatisMakbuzScreen extends StatefulWidget {
  const SatisMakbuzScreen({super.key});

  @override
  State<SatisMakbuzScreen> createState() => _SatisMakbuzScreenState();
}

class _SatisMakbuzScreenState extends State<SatisMakbuzScreen> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer:const DrawerBar(),
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
         iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
         elevation: 0,
        centerTitle: true,
        title:const Text(
          'Verilen Serbest Meslek Makbuzu', style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const SatisMakbuzDetayliArama(),
              ),
              SheetOption(
                icon:const Icon(Icons.send,color: Colors.black),
                text: 'Gönder',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.print,color: Colors.black),
                text: 'Yazdır',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.download,color: Colors.black),
                text: 'UBL İndir',
                page: const YeniRaporEkle(),
              ),
               SheetOption(
                icon:const Icon(Icons.swap_vert,color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
                      title: 'Ada göre (A-Z)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Ada göre (Z-A)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En yeni)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En eski)',
                      onPressed: () {},
                    ),
                   
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child: Column(
                  children: const [
                    ContainerWidget(
                      tedarikciAdi: 'Personel Ahmet Usta',
                      tedarikciNo: '0000000000001',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: SatisMakbuzFaturasi(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
     floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SatisMakbuzEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
