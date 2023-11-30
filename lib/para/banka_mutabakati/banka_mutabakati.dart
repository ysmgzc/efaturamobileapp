import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/banka_mutabakati/banka_mutabakati_ekle.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';

import '../../float_action_buton_widget.dart';

class BankaMutabakatiScreen extends StatefulWidget {
  const BankaMutabakatiScreen({Key? key}) : super(key: key);

  @override
  State<BankaMutabakatiScreen> createState() => _BankaMutabakatiScreenState();
}

class _BankaMutabakatiScreenState extends State<BankaMutabakatiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Banka Mutabakatı',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const SearchField(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: const BankaMutabakatiEkle(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
