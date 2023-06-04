import 'package:flutter/material.dart';

class SatisBuAyScreen extends StatefulWidget {
  const SatisBuAyScreen({Key? key}) : super(key: key);

  @override
  State<SatisBuAyScreen> createState() => _SatisBuAyScreenState();

}

class _SatisBuAyScreenState extends State<SatisBuAyScreen> {
 
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
