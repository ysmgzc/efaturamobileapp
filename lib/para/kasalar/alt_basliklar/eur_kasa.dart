import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/odeme_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/para_transferi.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tahsilat_ekle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class EURKasaScreen extends StatefulWidget {
  const EURKasaScreen({super.key});

  @override
  State<EURKasaScreen> createState() => _EURKasaScreenState();
}

class _EURKasaScreenState extends State<EURKasaScreen> {
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
          ' EUR KASASI',
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