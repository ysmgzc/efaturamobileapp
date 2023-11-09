import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/tekstil_hammadde/tekstil_hammadde.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_ekle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../search_field.dart';

class UrunHizmetSecScreen extends StatefulWidget {
  const UrunHizmetSecScreen({super.key});

  @override
  State<UrunHizmetSecScreen> createState() => _UrunHizmetSecScreenState();
}

class _UrunHizmetSecScreenState extends State<UrunHizmetSecScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Ürün/Hizmet seç',
          style: TextStyle(color: Colors.black),
        ),
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
              const SearchField(
                  suffixIcon: 'assets/icons/barcodescannericon.png'),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UrunlerHizmetlerWidget(
                        baslikText: "Tekstil Hammadde",
                        kdvsizText: "100 Kilogram",
                        kdvsizTextYuzde: "%18",
                        kdvsizSatisText: "₺100,00",
                        satisText: "(KDV'siz)",
                        showAlisContainer: false,
                        onTap: () {
                          Get.to(const TekstilHammaddeEkle());
                        },
                      ),
                      const Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Tekstil Ürünleri",
                        kdvsizText: "-100 Kilogram",
                        kdvsizTextYuzde: "%10",
                        kdvsizSatisText: "₺100,00",
                        satisText: "(KDV'siz)",
                        showAlisContainer: false,
                        onTap: () {
                          Get.to(const TekstilHammaddeEkle());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: const UrunEkle(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class UrunlerHizmetlerWidget extends StatelessWidget {
  final String? kdvsizAlisText;
  final String kdvsizSatisText;
  final String baslikText;
  final String kdvsizText;
  final String kdvsizTextYuzde;
  final String? alisText;
  final String satisText;
  final VoidCallback onTap;
  final bool showAlisContainer;
  final String stokKdvTextTitle;
  final String alisTextTitle;
  final String satisTextTitle;

  const UrunlerHizmetlerWidget({
    Key? key,
    this.kdvsizAlisText,
    required this.kdvsizSatisText,
    required this.baslikText,
    required this.kdvsizText,
    required this.kdvsizTextYuzde,
    this.alisText,
    required this.satisText,
    required this.onTap,
    this.showAlisContainer = true,
    this.stokKdvTextTitle = "STOK / KDV",
    this.alisTextTitle = "ALIŞ",
    this.satisTextTitle = "SATIŞ",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [
      _buildContainer(
          stokKdvTextTitle, Colors.blue, kdvsizText, kdvsizTextYuzde,
          addSlash: true),
      if (showAlisContainer)
        _buildContainer(
            alisTextTitle, Colors.red, kdvsizAlisText ?? '', alisText),
      _buildContainer(satisTextTitle, Colors.green, kdvsizSatisText, satisText),
    ];

    return InkWell(
      onTap: onTap,
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
            children: containers,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildContainer(
      String title, Color color, String mainText, String? subText,
      {bool addSlash = false}) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: yTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Container(
              height: 2.0,
              color: color,
              width: 20.0,
            ),
            const SizedBox(height: 5),
            Text(
              addSlash ? '$mainText / $subText' : '$mainText ${subText ?? ""}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
