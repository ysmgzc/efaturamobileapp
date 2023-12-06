import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';

class EDevletBilgileriScreen extends StatefulWidget {
  const EDevletBilgileriScreen({Key? key}) : super(key: key);

  @override
  State<EDevletBilgileriScreen> createState() => _EDevletBilgileriScreenState();
}

class _EDevletBilgileriScreenState extends State<EDevletBilgileriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E-Devlet Bilgileri',
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
