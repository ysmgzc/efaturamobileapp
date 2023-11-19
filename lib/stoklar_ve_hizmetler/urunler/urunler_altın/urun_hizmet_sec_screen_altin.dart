import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_alt%C4%B1n/urun_ekle_altin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../search_field.dart';

class UrunHizmetSecAltinScreen extends StatefulWidget {
  const UrunHizmetSecAltinScreen({super.key});

  @override
  State<UrunHizmetSecAltinScreen> createState() =>
      _UrunHizmetSecAltinScreenState();
}

class _UrunHizmetSecAltinScreenState extends State<UrunHizmetSecAltinScreen> {
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
          'Ürün/Hizmet seç (Altın)',
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
                        tedarikciAdi: 'S-00000001',
                        tedarikciAdiStyle:
                            TextStyle(color: Colors.grey, fontSize: 14),
                        tedarikciNo: 'Bilezik',
                        tedarikciNoStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        durumu: '22K',
                        altinMetin: "Miktar:",
                        paraBirimi: '91,600 GR',
                        paraBirimiStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      ContainerWidget(
                        tedarikciAdi: 'S-00000001',
                        tedarikciAdiStyle:
                            TextStyle(color: Colors.grey, fontSize: 14),
                        tedarikciNo: 'Bilezik',
                        tedarikciNoStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        durumu: '22K',
                        altinMetin: "Miktar:",
                        paraBirimi: '91,600 GR',
                        paraBirimiStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
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
              route: const UrunEkleAltin(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
