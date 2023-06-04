import 'package:flutter/material.dart';

class MasrafBuAyScreen extends StatefulWidget {
  const MasrafBuAyScreen({Key? key}) : super(key: key);

  @override
  State<MasrafBuAyScreen> createState() => _MasrafBuAyScreenState();

}

class _MasrafBuAyScreenState extends State<MasrafBuAyScreen> {
 
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
          'Bu Ay',
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
