import 'package:flutter/material.dart';

class MasrafGecenHaftaScreen extends StatefulWidget {
  const MasrafGecenHaftaScreen({Key? key}) : super(key: key);

  @override
  State<MasrafGecenHaftaScreen> createState() => _MasrafGecenHaftaScreenState();

}

class _MasrafGecenHaftaScreenState extends State<MasrafGecenHaftaScreen> {
 
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
