import 'package:flutter/material.dart';

class MasrafGecenAyScreen extends StatefulWidget {
  const MasrafGecenAyScreen({Key? key}) : super(key: key);

  @override
  State<MasrafGecenAyScreen> createState() => _MasrafGecenAyScreenState();

}

class _MasrafGecenAyScreenState extends State<MasrafGecenAyScreen> {
 
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
          'Geçen Ay',
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
