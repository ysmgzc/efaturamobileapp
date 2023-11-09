import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/raporlar/alis_ozeti_rapor_icerigi_widget.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_ekle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../satis_ozeti_rapor_icerigi_widget.dart';

class ZamanBirimiFormScreen extends StatefulWidget {
  String appBarZamanBirimiBaslik;
  String appBarRaporBaslik;

  ZamanBirimiFormScreen(
      {required this.appBarZamanBirimiBaslik, required this.appBarRaporBaslik});

  @override
  State<ZamanBirimiFormScreen> createState() => _ZamanBirimiFormScreenState();
}

class _ZamanBirimiFormScreenState extends State<ZamanBirimiFormScreen> {
  int masrafScreenSecim = 0;

  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {
      if (widget.appBarRaporBaslik == "Masraf Özeti") {
        masrafScreenSecim = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          widget.appBarZamanBirimiBaslik,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/paylasicon.png'),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.03,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
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
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: masrafScreenSecim == 0
                        ? [
                            SatisOzetiRaporIcerigiWidget(
                              baslikTarih: "24 MAYIS",
                              toplamTutarText: "₺25,00",
                              tutarText: "₺25,00",
                              indirimFiyat: "₺0,00",
                              kdvFiyat: "₺0,00",
                              netTutarText: "₺0,00",
                              faturaSayisi: "1",
                            ),
                          ]
                        : [
                            AlisOzetiRaporIcerigiWidget(
                              baslikTarih: "24 MAYIS",
                              toplamTutarText: "₺25,00",
                              indirimFiyat: "₺0,00",
                              netTutarText: "₺0,00",
                            ),
                          ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kButtonColor,
        onPressed: () {
          Get.to(const UrunEkle());
        },
        shape: const StadiumBorder(
            side: BorderSide(color: kButtonColor, width: 3)),
        child: const Icon(Icons.add),
      ),
    );
  }
}
