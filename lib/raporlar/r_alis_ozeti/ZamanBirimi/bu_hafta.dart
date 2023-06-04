import 'package:flutter/material.dart';

class AlisBuHaftaScreen extends StatefulWidget {
  const AlisBuHaftaScreen({Key? key}) : super(key: key);

  @override
  State<AlisBuHaftaScreen> createState() => _AlisBuHaftaScreenState();

}

class _AlisBuHaftaScreenState extends State<AlisBuHaftaScreen> {
 
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
