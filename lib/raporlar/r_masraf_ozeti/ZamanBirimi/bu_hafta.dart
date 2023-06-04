import 'package:flutter/material.dart';

class MasrafBuHaftaScreen extends StatefulWidget {
  const MasrafBuHaftaScreen({Key? key}) : super(key: key);

  @override
  State<MasrafBuHaftaScreen> createState() => _MasrafBuHaftaScreenState();

}

class _MasrafBuHaftaScreenState extends State<MasrafBuHaftaScreen> {
 
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
          'Bu Hafta',
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
