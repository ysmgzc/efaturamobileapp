import 'package:flutter/material.dart';

class AlisBuAyScreen extends StatefulWidget {
  const AlisBuAyScreen({Key? key}) : super(key: key);

  @override
  State<AlisBuAyScreen> createState() => _AlisBuAyScreenState();

}

class _AlisBuAyScreenState extends State<AlisBuAyScreen> {
 
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
