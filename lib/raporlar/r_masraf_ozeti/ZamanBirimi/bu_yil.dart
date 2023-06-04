import 'package:flutter/material.dart';

class MasrafBuYilScreen extends StatefulWidget {
  const MasrafBuYilScreen({Key? key}) : super(key: key);

  @override
  State<MasrafBuYilScreen> createState() => _MasrafBuYilScreenState();

}

class _MasrafBuYilScreenState extends State<MasrafBuYilScreen> {
 
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
          'Bu Yıl',
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
