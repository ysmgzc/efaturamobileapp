import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/raporlar/components/alissatistoplamlaridetayliarama.dart';
import 'package:flutter/material.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../drawer_bar.dart';
import '../../search_field.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class RAlisSatisToplamlariScreen extends StatefulWidget {
  const RAlisSatisToplamlariScreen({Key? key}) : super(key: key);

  @override
  State<RAlisSatisToplamlariScreen> createState() =>
      _RAlisSatisToplamlariScreenState();
}

class _RAlisSatisToplamlariScreenState
    extends State<RAlisSatisToplamlariScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alış/Satış Toplamları',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const AlisSatisToplamlariDetayliArama(),
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
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
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
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: CustomContainerWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      AlisSatisToplamWidget(
                        baslikText: "Tekstil Ürünleri",
                        satisFiyat: "₺100,00",
                        alisFiyat: "₺100,00",
                        alisMiktar: "10KG",
                        satisMiktar: "10KG",
                        satisVergi: "₺1.12,00",
                        alisVergi: "₺1.12,00",
                        satisIndirim: "₺0,00",
                        alisIndirim: "₺0,00",
                      ),
                      Divider(endIndent: 10, indent: 10),
                      AlisSatisToplamWidget(
                        baslikText: "Maaş Ücreti",
                        satisFiyat: "₺100,00",
                        alisFiyat: "₺100,00",
                        alisMiktar: "10KG",
                        satisMiktar: "10KG",
                        satisVergi: "₺1.12,00",
                        alisVergi: "₺1.12,00",
                        satisIndirim: "₺0,00",
                        alisIndirim: "₺0,00",
                      ),
                      Divider(endIndent: 10, indent: 10),
                      AlisSatisToplamWidget(
                        baslikText: "Tekstil Hammade",
                        satisFiyat: "₺100,00",
                        alisFiyat: "₺100,00",
                        alisMiktar: "10KG",
                        satisMiktar: "10KG",
                        satisVergi: "₺1.12,00",
                        alisVergi: "₺1.12,00",
                        satisIndirim: "₺0,00",
                        alisIndirim: "₺0,00",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlisSatisToplamWidget extends StatelessWidget {
  final String baslikText;
  final String satisFiyat;
  final String satisMiktar;
  final String satisVergi;
  final String satisIndirim;
  final String alisFiyat;
  final String alisMiktar;
  final String alisVergi;
  final String alisIndirim;

  const AlisSatisToplamWidget({
    Key? key,
    required this.satisFiyat,
    required this.baslikText,
    required this.satisMiktar,
    required this.satisVergi,
    required this.satisIndirim,
    required this.alisFiyat,
    required this.alisMiktar,
    required this.alisVergi,
    required this.alisIndirim,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          baslikText,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "SATIŞLAR",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  satisFiyat,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "MİKTAR",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  satisMiktar,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "SATIŞ TOPLAM VERGİ",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  satisVergi,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "SATIŞ TOPLAM İNDİRİM",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  satisIndirim,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ALIŞLAR",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  alisFiyat,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "MİKTAR",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  alisMiktar,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "ALIŞ TOPLAM VERGİ",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  alisVergi,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "ALIŞ TOPLAM İNDİRİM",
                  style: TextStyle(
                    color: yTextColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  alisIndirim,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
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
    );
  }
}

class DialogOption {
  final String title;
  final VoidCallback onPressed;

  DialogOption({required this.title, required this.onPressed});
}
