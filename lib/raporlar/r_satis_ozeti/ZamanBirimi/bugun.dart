import 'package:flutter/material.dart';

class SatisBugunScreen extends StatefulWidget {
  const SatisBugunScreen({Key? key}) : super(key: key);

  @override
  State<SatisBugunScreen> createState() => _SatisBugunScreenState();

}

class _SatisBugunScreenState extends State<SatisBugunScreen> {
 
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
