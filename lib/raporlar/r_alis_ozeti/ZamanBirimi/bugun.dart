import 'package:flutter/material.dart';

class AlisBugunScreen extends StatefulWidget {
  const AlisBugunScreen({Key? key}) : super(key: key);

  @override
  State<AlisBugunScreen> createState() => _AlisBugunScreenState();

}

class _AlisBugunScreenState extends State<AlisBugunScreen> {
 
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
