import 'package:flutter/material.dart';

class AlisGecenYilScreen extends StatefulWidget {
  const AlisGecenYilScreen({Key? key}) : super(key: key);

  @override
  State<AlisGecenYilScreen> createState() => _AlisGecenYilScreenState();

}

class _AlisGecenYilScreenState extends State<AlisGecenYilScreen> {
 
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
