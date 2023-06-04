import 'package:flutter/material.dart';

class SatisBuYilScreen extends StatefulWidget {
  const SatisBuYilScreen({Key? key}) : super(key: key);

  @override
  State<SatisBuYilScreen> createState() => _SatisBuYilScreenState();

}

class _SatisBuYilScreenState extends State<SatisBuYilScreen> {
 
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
