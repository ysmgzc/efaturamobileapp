import 'package:flutter/material.dart';

class MasrafDunScreen extends StatefulWidget {
  const MasrafDunScreen({Key? key}) : super(key: key);

  @override
  State<MasrafDunScreen> createState() => _MasrafDunScreenState();

}

class _MasrafDunScreenState extends State<MasrafDunScreen> {
 
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
          'Bugün',
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
