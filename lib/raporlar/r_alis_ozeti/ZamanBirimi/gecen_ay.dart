import 'package:flutter/material.dart';

class AlisGecenAyScreen extends StatefulWidget {
  const AlisGecenAyScreen({Key? key}) : super(key: key);

  @override
  State<AlisGecenAyScreen> createState() => _AlisGecenAyScreenState();

}

class _AlisGecenAyScreenState extends State<AlisGecenAyScreen> {
 
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
