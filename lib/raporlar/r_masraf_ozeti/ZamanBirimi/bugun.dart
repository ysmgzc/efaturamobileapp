import 'package:flutter/material.dart';

class MasrafBugunScreen extends StatefulWidget {
  const MasrafBugunScreen({Key? key}) : super(key: key);

  @override
  State<MasrafBugunScreen> createState() => _MasrafBugunScreenState();

}

class _MasrafBugunScreenState extends State<MasrafBugunScreen> {
 
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
