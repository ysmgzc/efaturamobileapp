import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/brut_ucretler_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/danismalik_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/demirbasbakimonarimgider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/diger_giderler_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/egitim_giderleri_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/elektrik_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/haberlesme_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/hesaplama_hizmeti_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/isinma_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/kira_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/kirtasiye_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/maas_ucret_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/nakliye_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/saglik_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/su_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/tasitbakimonarim_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/temizlik_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/yemek_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hareketler/yol_ogs_hgs_ulasim_gider_hareket.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/alt_basliklar/hizmet_duzenle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmet_ekle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/secenekler/hizmetlerdetayliarama.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../float_action_buton_widget.dart';
import '../../show_dialog_ekle.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'alt_basliklar/hareketler/prim_odeme_hareket.dart';

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
      appBar: AppBar(
        title: const Text(
          'Hizmetler',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const HizmetlerDetayliArama(),
              ),
              SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
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
                  ShowDialogEkle.showCustomDialog(
                      context, dialogOptions, 'Sıralama');
                },
              ),
              SheetOption(
                icon: Image.asset(
                  'assets/icons/excelicon.png',
                  width: 20,
                  height: 20,
                ),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ),
                child: const SearchField()),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UrunlerHizmetlerWidget(
                        baslikText: "Brüt Ücretler",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%18",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: BrutUcretlerHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Danışmanlık Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: DanismalikGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Demirbaş ve Bakım Onarım Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: DemirbasBakimOnarimGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Diğer Giderler",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: DigerGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Eğitim Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: EgitimGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Elektrik Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: ElektrikGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Haberleşme Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: HaberlesmeGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Hesaplama Hizmeti",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: HesaplamaHizmetHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Isınma Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: IsinmaGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Kira Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: KiraGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Kırtasiye Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: KirtasiyeGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Maaş Ücreti",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: MaasUcretHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Nakliye Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: NakliyeGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Prim Ödemesi",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: PrimOdemeHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Sağlık Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: SaglikGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Su Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: SuGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Taşıt Bakım - Onarım Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: TasitBakimOnarimGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Temizlik Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: TemizlikGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Yemek Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: YemekGiderHareket(),
                      ),
                      Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Yol, OGS, HGS, Ulaşım Giderleri",
                        kdvsizText: "Adet / ",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        kdvsizSatisText: "₺100,00",
                        onPressedDuzenle: HizmetDuzenle(),
                        onPressedHareketler: YolOGSHGSUlasimGiderHareket(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: const HizmetEkle(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              Get.to(onPressedDuzenle);
            },
          ),
          DialogOption(
            title: "Hareketler",
            onPressed: () {
              Get.to(onPressedHareketler);
            },
          ),
        ];
        ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            baslikText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildColumn(
                  "STOK / KDV", Colors.blue, [kdvsizText, kdvsizTextYuzde]),
              _buildColumn("ALIŞ", color2, [kdvsizAlisText]),
              _buildColumn("SATIŞ", color6, [kdvsizSatisText]),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Column _buildColumn(String title, Color color, List<String> texts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: yTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 5),
        Container(height: 2.0, color: color, width: 20.0),
        const SizedBox(height: 5),
        Row(
          children: texts
              .map((text) => Text(
                    text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
