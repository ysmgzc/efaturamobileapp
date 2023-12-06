import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:flutter/material.dart';

class BankaMutabakatiEkle extends StatefulWidget {
  const BankaMutabakatiEkle({Key? key}) : super(key: key);

  @override
  State<BankaMutabakatiEkle> createState() => _BankaMutabakatiEkleState();
}

class _BankaMutabakatiEkleState extends State<BankaMutabakatiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text(
          'Banka Mutabakatı Ekle',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
