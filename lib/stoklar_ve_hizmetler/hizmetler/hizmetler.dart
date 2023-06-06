import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/hareketler.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hizmet_duzenle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmet_ekle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/secenekler/hizmetlerdetayliarama.dart';
import 'package:flutter/material.dart';
import '../../show_dialog_ekle.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class HizmetlerScreen extends StatefulWidget {
  const HizmetlerScreen({Key? key}) : super(key: key);

  @override
  State<HizmetlerScreen> createState() => _HizmetlerScreenState();
}

class _HizmetlerScreenState extends State<HizmetlerScreen> {
  @override
  Widget build(BuildContext context) {
            double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Hizmetler',
          style: TextStyle(color: Colors.black),
        ),
         actions: [ 
          CustomIconButton(
            options: [
              SheetOption(
                icon:const Icon(Icons.filter_alt,color: Colors.black),
                text: 'Detaylı Arama',
                page: const HizmetlerDetayliArama(),
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
      body:SingleChildScrollView(
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
                    child:const Padding(
                      padding:  EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UrunlerHizmetlerWidget(
                            baslikText: "Brüt Ücretler",
                            kdvsizText: "Adet / ",
                            kdvsizTextYuzde:"%18",
                            kdvsizAlisText: "₺25,00",
                            kdvsizSatisText: "₺100,00",
                            onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                              ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Danışmanlık Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Demirbaş ve Bakım Onarım Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Diğer Giderler",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Eğitim Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Elektrik Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Haberleşme Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Hesaplama Hizmeti",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Isınma Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Kira Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Kırtasiye Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Maaş Ücreti",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Nakliye Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Prim Ödemesi",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Sağlık Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Su Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Taşıt Bakım - Onarım Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Temizlik Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                            
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Yemek Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                          Divider(),
                          UrunlerHizmetlerWidget(
                          baslikText: "Yol, OGS, HGS, Ulaşım Giderleri",
                          kdvsizText: "Adet / ",
                          kdvsizTextYuzde:"%10",
                          kdvsizAlisText: "₺25,00",
                          kdvsizSatisText: "₺100,00",
                           onPressedDuzenle: HizmetDuzenle(),
                            onPressedHareketler: HizmetlerDanismanlikHareketler(),
                        ),
                        
                            ],
    ),
  ),     
            ),  ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HizmetEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}


class UrunlerHizmetlerWidget extends StatelessWidget {
  final String kdvsizAlisText;
  final String kdvsizSatisText;
  final String baslikText;
  final String kdvsizText;
  final String kdvsizTextYuzde;
   final Widget onPressedDuzenle;
   final Widget onPressedHareketler;

  const UrunlerHizmetlerWidget({
    Key? key,
    required this.kdvsizAlisText,
    required this.kdvsizSatisText,
    required this.baslikText,
    required this.kdvsizText,
    required this.kdvsizTextYuzde,
    required this.onPressedDuzenle,
    required this.onPressedHareketler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   return InkWell(
 onTap: () {
                  List<DialogOption> dialogOptions = [
              DialogOption(
                          title: "Düzenle",
                          onPressed: () { 
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  onPressedDuzenle,
                              ));
                          },
                        ),
                        DialogOption(
                          title: "Hareketler",
                          onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  onPressedHareketler,
                              ));
                          },
                        ),
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            baslikText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    "STOK / KDV",
                    style:  TextStyle(
                      color: yTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.blue,
                    width: 20.0,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        kdvsizText,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                       Text(
                    kdvsizTextYuzde,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                    ],
                  ),
                  
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ALIŞ",
                    style: TextStyle(
                      color: yTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.red,
                    width: 20.0,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    kdvsizAlisText,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "SATIŞ",
                    style: TextStyle(
                      color: yTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.green,
                    width: 20.0,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    kdvsizSatisText,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
           const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}


