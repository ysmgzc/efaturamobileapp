
import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/giderler/hizmet_masraf_save.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/borc_alacak_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/musteri_islem_listesi/secenekler/musteriislemlistesidetayliarama.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/virman.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/odeme_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tahsilat_ekle.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../../../../show_dialog_ekle.dart';
import '../../../../../siralama_islemi_widget.dart';

class MusteriIslemListesiScreen extends StatefulWidget {
  const MusteriIslemListesiScreen({Key? key}) : super(key: key);

  @override
  State<MusteriIslemListesiScreen> createState() => _MusteriIslemListesiScreenState();
}

class _MusteriIslemListesiScreenState extends State<MusteriIslemListesiScreen> {
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
          'Test Ltd. Şti.', style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const MusteriTedarikciIslemListesiDetayliArama(),
              ),
               SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
               onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SiralamaIslemi(
                      onSort: (sortedItems) {
                      },
                      optionIds: [3, 4],
                    );
                  },
                );
                
              },
              ),
              SheetOption(
               icon:const Icon(Icons.print,color: Colors.black),
                text: "Extre Görüntüle",
                page: const YeniRaporEkle(),
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
                height: MediaQuery.of(context).size.height * 0.015,
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
                     SizedBox(height: 10,),
                  ContainerWidget(
                        ustTarih: '24 Nisan',
                        tedarikciAdi:'Personel Ahmet Usta' ,
                        tedarikciNo: '000001',
                        paraBirimi: '₺1000',
                        page: HizmetMasrafSave(),
                        ),
                 SizedBox(height: 10,),
                  Divider(),
                   ContainerWidget(
                        ustTarih: '24 Nisan',
                        tedarikciAdi:'Personel Ahmet Usta' ,
                        tedarikciNo: '000001',
                        paraBirimi: '₺1000',
                        page: HizmetMasrafSave(),
                        ),
               SizedBox(height: 10,),
                  ],
                ),     
          )],
          ),
        ),
      ),
    floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: kButtonColor,
        overlayColor: kButtonColor,
        overlayOpacity: 0.4,
        spaceBetweenChildren: 12,
        spacing: 12,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Ödeme Ekle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KasalarOdemeEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Tahsilat Ekle',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TahsilatEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Borç & Alacak',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BorcAlacakEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Virman',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VirmanEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
