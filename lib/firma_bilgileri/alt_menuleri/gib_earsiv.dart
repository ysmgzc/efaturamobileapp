
import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';

class GibEArsivScreen extends StatefulWidget {
  const GibEArsivScreen({Key? key}) : super(key: key);

  @override
  State<GibEArsivScreen> createState() => _GibEArsivScreenState();
}

class _GibEArsivScreenState extends State<GibEArsivScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, 
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Gib E-Arşiv Portal Bilgileri', style: TextStyle(color: Colors.black),
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
     
    );
  }
}
