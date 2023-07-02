import 'package:efaturamobileapp/alislar/alis_faturasi/alis_faturasi_save.dart';
import 'package:efaturamobileapp/alislar/alis_faturasi/alis_faturasi_ekle.dart';
import 'package:efaturamobileapp/alislar/alis_faturasi/alis_iade_faturasi_save.dart';
import 'package:efaturamobileapp/alislar/alis_faturasi/alis_iade_faturasi_ekle.dart';
import 'package:efaturamobileapp/alislar/alis_faturasi/secenekler/alisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/bottom_app_bar_widget_toplam.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../container_widget.dart';
import '../../home_screen/home_page_screen.dart';
import '../../show_dialog_ekle.dart';

class AlisFaturalarScreen extends StatefulWidget {
  const AlisFaturalarScreen({Key? key}) : super(key: key);

  @override
  State<AlisFaturalarScreen> createState() => _AlisFaturalarScreenState();
}

class _AlisFaturalarScreenState extends State<AlisFaturalarScreen> {
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
          'Alış Faturaları', style: TextStyle(color: Colors.black),
        ),
         
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const AlisFaturasiDetayliArama(),
              ),
              SheetOption(
                icon:const Icon(Icons.swap_vert,color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
                      title: 'Tarihe göre (En yeni)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En eski)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tutara göre (En yüksek)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tutara göre (En düşük)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Gönderen unvanı (A-Z)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Gönderen unvanı (Z-A)',
                      onPressed: () {},
                    ),
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
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
                icon:const Icon(Icons.delete,color: Colors.black),
                text: 'Sil',
                page: const HomePageScreen(),
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
                child:const Column(
                  children:  [
                    ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Satınalma Faturası',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: AlisFaturasiSave(),
                    ),
                    Divider(),
                     ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Satınalma İade Faturası',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: AlisIadeFaturasiSave(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
   bottomNavigationBar:const CustomBottomAppBarToplam(
  firstText: "TOPLAM",
  secondText: "₺1000",
),
     floatingActionButton: CustomFAB(
    isSpeedDial: true,
    childrenData: [
      SpeedDialData(
        label: 'İade Faturası',
        route:const AlisIadeFaturasiEkle(),
      ),
      SpeedDialData(
        label: 'Alış Faturası',
        route: const AlisFaturasiEkle(),
      ),
    ],
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
);
  }
}
