import 'package:flutter/material.dart';

class AlisGecenHaftaScreen extends StatefulWidget {
  const AlisGecenHaftaScreen({Key? key}) : super(key: key);

  @override
  State<AlisGecenHaftaScreen> createState() => _AlisGecenHaftaScreenState();

}

class _AlisGecenHaftaScreenState extends State<AlisGecenHaftaScreen> {
 
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
