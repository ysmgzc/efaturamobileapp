import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:flutter/material.dart';


class DestekScreen extends StatelessWidget {
  const DestekScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Destek',
        ),
      ),
      body: Container(),
    );
  }
}

