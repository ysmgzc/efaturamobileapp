import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/secenekler/stokhareketleridetayliarama.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_cikisi.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_girisi.dart';
import 'package:flutter/material.dart';
import '../../alislar/alis_faturasi/alis_faturasi_save.dart';
import '../../satislar/satis_faturasi/satis_perakende_faturasi_save.dart';
import '../../satislar/satis_faturasi/satis_toptan_faturasi_save.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class StokHareketleriScreen extends StatefulWidget {
  const StokHareketleriScreen({Key? key}) : super(key: key);

  @override
  State<StokHareketleriScreen> createState() => _StokHareketleriScreenState();
}

class _StokHareketleriScreenState extends State<StokHareketleriScreen> {
  @override
  Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Stok Hareketleri', style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const StokHareketleriDetayliArama(),
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
                child:const Column(
                  children: [ 
                     ContainerWidget(
                        tedarikciAdi:'Perakende Satış Faturası' ,
                        tedarikciNo: '0000000000001',
                        tarih: '24 Nisan',
                        paraBirimi: '₺1000',
                        page: SatisPerakendeFaturasiSave(),
                        ),
                        Divider(),
                         ContainerWidget(
                        tedarikciAdi:'Toptan Satış Faturası' ,
                        tedarikciNo: '0000000000001',
                        tarih: '24 Nisan',
                        paraBirimi: '₺1000',
                        page: SatisToptanFaturasiSave(),
                        ),
                         Divider(),
                         ContainerWidget(
                        tedarikciAdi:'Satınalma Faturası' ,
                        tedarikciNo: '0000000000001',
                        tarih: '24 Nisan',
                        paraBirimi: '₺1000',
                        page: AlisFaturasiSave(),
                        ),
                  ],
                ),     
          )],
          ),
        ),
      ),
       floatingActionButton: Padding(
         padding: const EdgeInsets.only(bottom: 20),
         child: CustomFAB(
           isSpeedDial: true,
           childrenData: [
             SpeedDialData(
          label: 'Stok Çıkışı',
          route:const StokCikisiEkle(),
             ),
             SpeedDialData(
          label: 'Stok Girişi',
          route: const StokGirisiEkle(),
             ),
           ],
         ),
       ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
);
  }
}
