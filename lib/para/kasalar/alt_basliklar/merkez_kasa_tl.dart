import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/odeme_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/para_transferi.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tahsilat_ekle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MerkezKasaTLScreen extends StatefulWidget {
  const MerkezKasaTLScreen({super.key});

  @override
  State<MerkezKasaTLScreen> createState() => _MerkezKasaTLScreenState();
}

class _MerkezKasaTLScreenState extends State<MerkezKasaTLScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
         //elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Merkez Kasa (TL KASASI)',
          style: TextStyle(color: Colors.black),
        ),
         iconTheme:const IconThemeData(color: Colors.black),
      ),
       backgroundColor: Colors.white,
       body:const SingleChildScrollView(
         child: Column(
           children: [
                 Column(
                  children: [
                  
                              
                  ],
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ParaTransferiEkle(),
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
        ],
      ),
    );
  }
}