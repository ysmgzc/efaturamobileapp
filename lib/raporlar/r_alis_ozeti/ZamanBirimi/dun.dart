import 'package:flutter/material.dart';

class AlisDunScreen extends StatefulWidget {
  const AlisDunScreen({Key? key}) : super(key: key);

  @override
  State<AlisDunScreen> createState() => _AlisDunScreenState();

}

class _AlisDunScreenState extends State<AlisDunScreen> {
 
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
