import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/odeme_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/para_transferi.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tahsilat_ekle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

class KasaScreen extends StatefulWidget {
  String appBarBaslik;
  KasaScreen({super.key, required this.appBarBaslik});

  @override
  State<KasaScreen> createState() => _KasaScreenState();
}

class _KasaScreenState extends State<KasaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.appBarBaslik,
        ),
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [],
            ),
          ],
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
            label: 'Para Transferi',
            onTap: () {
              Get.to(const ParaTransferiEkle());
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Tahsilat Ekle',
            onTap: () {
              Get.to(const TahsilatEkle());
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Ödeme Ekle',
            onTap: () {
              Get.to(const KasalarOdemeEkle());
            },
          ),
        ],
      ),
    );
  }
}
