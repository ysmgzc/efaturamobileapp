
import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';

class KullaniciSozlesmesiScreen extends StatefulWidget {
  const KullaniciSozlesmesiScreen({Key? key}) : super(key: key);

  @override
  State<KullaniciSozlesmesiScreen> createState() => _KullaniciSozlesmesiScreenState();
}

class _KullaniciSozlesmesiScreenState extends State<KullaniciSozlesmesiScreen> {
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
          'Kullanıcı Sözleşmesi', style: TextStyle(color: Colors.black),
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
