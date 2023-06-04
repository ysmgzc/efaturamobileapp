import 'package:flutter/material.dart';

class SatisBuHaftaScreen extends StatefulWidget {
  const SatisBuHaftaScreen({Key? key}) : super(key: key);

  @override
  State<SatisBuHaftaScreen> createState() => _SatisBuHaftaScreenState();

}

class _SatisBuHaftaScreenState extends State<SatisBuHaftaScreen> {
 
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
          'Bu Hafta',
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
