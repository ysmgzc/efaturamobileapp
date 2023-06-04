import 'package:flutter/material.dart';

class MasrafGecenYilScreen extends StatefulWidget {
  const MasrafGecenYilScreen({Key? key}) : super(key: key);

  @override
  State<MasrafGecenYilScreen> createState() => _MasrafGecenYilScreenState();

}

class _MasrafGecenYilScreenState extends State<MasrafGecenYilScreen> {
 
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
          'Geçen Yıl',
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
