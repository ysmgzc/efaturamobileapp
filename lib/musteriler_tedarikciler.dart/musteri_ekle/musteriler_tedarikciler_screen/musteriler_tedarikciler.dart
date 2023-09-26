
import 'package:efaturamobileapp/alislar/alis_siparisler/alis_siparis_ekle.dart';
import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteri_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/borc_alacak_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/musteri_duzenle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/musteri_islem_listesi/islem_listesi.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/odeme_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/tahsilat_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/alt_basliklar/virman.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/secenekler/musterivetedarikcidetayliarama.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_girisi_ekle.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/search_field.dart';
import '../../../bottom_app_bar_widget_toplam.dart';
import '../../../show_dialog_ekle.dart';

class MusterilerTedarikcilerScreen extends StatefulWidget {
  int secim;

MusterilerTedarikcilerScreen({required this.secim});


  @override
  State<MusterilerTedarikcilerScreen> createState() => _MusterilerTedarikcilerScreenState();
}

class _MusterilerTedarikcilerScreenState extends State<MusterilerTedarikcilerScreen> {

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
          'Müşteriler & Tedarikçiler', style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const MusteriVeTedarikciDetayliArama(),
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
                child: widget.secim==0?const Column(
                  children: [  
                     SizedBox(height: 10,),
                  CustomWidget(
                    avatarText: 'Personel Ahmet Usta',
                    tedarikciAdi: 'Personel Ahmet Usta',
                    paraBirimi: '₺1000',
                    durumu : 'Ödenecek',
                    onPressedDuzenle: MusteriDuzenleScreen(),
                    onPressedIslemListesi:MusteriIslemListesiScreen(),
                    onPressedTahsilat: TahsilatMakbuzuEkle(),
                    onPressedOdeme:  MusterilerVeTedarikcilerOdemeEkle(),
                    onPressedVirman: VirmanEkle(),
                    onPressedBorcAlacak: BorcAlacakEkle(),
                    onPressedCekGirisi: CekGirisiEkle(),
                    
                  ),
                 SizedBox(height: 10,),
                  Divider(),
                   CustomWidget(
                        avatarText: 'Test Alış Ltd. Şti.',
                        tedarikciAdi: 'Test Alış Ltd. Şti.',
                        lokasyon: 'İstanbul',
                        paraBirimi: '₺1000',
                        durumu: 'Tahsil Edilecek',
                        onPressedDuzenle: MusteriDuzenleScreen(),
                        onPressedIslemListesi:MusteriIslemListesiScreen(),
                        onPressedTahsilat: TahsilatMakbuzuEkle(),
                        onPressedOdeme:  MusterilerVeTedarikcilerOdemeEkle(),
                        onPressedVirman: VirmanEkle(),
                        onPressedBorcAlacak: BorcAlacakEkle(),
                        onPressedCekGirisi: CekGirisiEkle(),
                          ),
               SizedBox(height: 10,),
                  ],
                ):const Column(children: [
                   SizedBox(height: 10,),
                  CustomWidget2(
                    avatarText: 'Personel Ahmet Usta',
                    tedarikciAdi: 'Personel Ahmet Usta',
                    paraBirimi: '₺1000',
                    durumu : 'Ödenecek',
                  ),
                 SizedBox(height: 10,),
                  Divider(),
                   CustomWidget2(
                        avatarText: 'Test Alış Ltd. Şti.',
                        tedarikciAdi: 'Test Alış Ltd. Şti.',
                        lokasyon: 'İstanbul',
                        paraBirimi: '₺1000',
                        durumu: 'Tahsil Edilecek',
                          ),
               SizedBox(height: 10,),
                ],),     
          )],
          ),
        ),
      ),
       bottomNavigationBar:const CustomBottomAppBarToplam(
  firstText: "BAKİYE",
  secondText: "₺1000",
),
       floatingActionButton: CustomFAB(
         isSpeedDial: false,
        childrenData: [
          SpeedDialData(
        label: '',
        route:const MusteriEkleScreen(),
           ),
        ],
       ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
class CustomWidget extends StatelessWidget {
  final String avatarText;
  final String tedarikciAdi;
  final String? lokasyon;
  final String paraBirimi;
  final String durumu;
  final Widget onPressedDuzenle;
  final Widget onPressedIslemListesi;
  final Widget onPressedTahsilat;
  final Widget onPressedOdeme;
  final Widget onPressedVirman;
  final Widget onPressedBorcAlacak;
  final Widget onPressedCekGirisi;
   // final VoidCallback onTap;

  const CustomWidget({
    Key? key,
    this.avatarText = '',
    this.tedarikciAdi = '',
    this.lokasyon,
    this.paraBirimi = '',
    this.durumu = '',
    required this.onPressedDuzenle,
    required this.onPressedIslemListesi,
    required this.onPressedTahsilat,
    required this.onPressedOdeme,
    required this.onPressedVirman,
    required this.onPressedBorcAlacak,
    required this.onPressedCekGirisi,
      //  required this.onTap,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  () {
                                  List<DialogOption> dialogOptions = [
                                    DialogOption(
                                      title: 'Düzenle',
                                      onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  onPressedDuzenle,
                              ));
                                      },
                                    ),
                                    DialogOption(
                                      title: "İşlem Listesi",
                                      onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => onPressedIslemListesi, 
                              ));
                                      },
                                    ),
                                     DialogOption(
                                      title: "Tahsilat Ekle",
                                      onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => onPressedTahsilat,
                              ));
                                      },
                                    ),
                                    DialogOption(
                                      title: "Ödeme Ekle",
                                      onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => onPressedOdeme,
                              ));
                                      },
                                    ),
                                    DialogOption(
                                      title: "Virman",
                                      onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => onPressedVirman,
                              ));
                                      },
                                    ),
                                        DialogOption(
                                      title: "Borç & Alacak Ekle",
                                      onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>onPressedBorcAlacak,
                              ));
                                      },
                                    ),
                                        DialogOption(
                                      title: "Çek Girişi",
                                      onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>onPressedCekGirisi,
                              ));
                                      },
                                    ),
                                  ];
                                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                                },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Text(
                    avatarText.substring(0, 1).toUpperCase(),
                    style:const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                ),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tedarikciAdi,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      lokasyon ?? '',
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    paraBirimi,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    durumu,
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







class CustomWidget2 extends StatelessWidget {
  final String avatarText;
  final String tedarikciAdi;
  final String? lokasyon;
  final String paraBirimi;
  final String durumu;
   // final VoidCallback onTap;

  const CustomWidget2({
    Key? key,
    this.avatarText = '',
    this.tedarikciAdi = '',
    this.lokasyon,
    this.paraBirimi = '',
    this.durumu = '',
      //  required this.onTap,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  () {   Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AlisSiparisEkle(metin: tedarikciAdi),
                              ));},
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Text(
                    avatarText.substring(0, 1).toUpperCase(),
                    style:const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                ),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tedarikciAdi,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      lokasyon ?? '',
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    paraBirimi,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    durumu,
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
