import 'package:flutter/material.dart';

class SatisGecenHaftaScreen extends StatefulWidget {
  const SatisGecenHaftaScreen({Key? key}) : super(key: key);

  @override
  State<SatisGecenHaftaScreen> createState() => _SatisGecenHaftaScreenState();

}

class _SatisGecenHaftaScreenState extends State<SatisGecenHaftaScreen> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Geçen Hafta',
          style: TextStyle(color: Colors.black),
        ),
    actions: [
     IconButton(
    icon: Image.asset('assets/icons/paylasicon.png'),
    onPressed: () {},
  ),
  ],

      ),

      backgroundColor: Colors.white,
      body:Container(),
       
    );
  }
}
