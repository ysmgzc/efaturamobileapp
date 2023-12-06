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
      appBar: AppBar(
        title: const Text(
          'Banka Mutabakatı',
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
