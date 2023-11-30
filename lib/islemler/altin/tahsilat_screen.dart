import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat%20_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/urun_ekle_altin_girisi.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_girisi_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tahsilat_ekle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/tekstil_hammadde/tekstil_hammadde.dart';
import 'package:flutter/material.dart';
import '../../../search_field.dart';

class TahsilatScreen extends StatefulWidget {
  const TahsilatScreen({super.key});

  @override
  State<TahsilatScreen> createState() => _TahsilatScreenState();
}

class _TahsilatScreenState extends State<TahsilatScreen> {
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
          'Tahsilat Screen',
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      ContainerWidget(
                        ustTarih: "26 KASIM",
                        tedarikciAdi: 'XAU',
                        tedarikciAdiStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        durumu: '000001 nolu...',
                        paraBirimi: '50,00 XAU',
                        paraBirimiStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        page: TahsilatEkle(),
                      ),
                      Divider(),
                      ContainerWidget(
                        ustTarih: "26 KASIM",
                        tedarikciAdi: 'XAU',
                        tedarikciAdiStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        durumu: '000001 nolu...',
                        paraBirimi: '50,00 XAU',
                        paraBirimiStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        page: TahsilatEkle(),
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
          isSpeedDial: true,
          childrenData: [
            SpeedDialData(
              label: 'Çek Girişi',
              route: const CekGirisiEkle(),
            ),
            SpeedDialData(
              label: 'Yeni Tahsilat',
              route: TahsilatEkleAltin(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
