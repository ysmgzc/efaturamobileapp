import 'package:flutter/material.dart';

class SatisGecenAyScreen extends StatefulWidget {
  const SatisGecenAyScreen({Key? key}) : super(key: key);

  @override
  State<SatisGecenAyScreen> createState() => _SatisGecenAyScreenState();

}

class _SatisGecenAyScreenState extends State<SatisGecenAyScreen> {
 
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
