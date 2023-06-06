import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/constants.dart';

class YetkiliKisiEkleScreen extends StatefulWidget {
  const YetkiliKisiEkleScreen({Key? key}) : super(key: key);

  @override
  State<YetkiliKisiEkleScreen> createState() => _YetkiliKisiEkleScreenState();
}

class _YetkiliKisiEkleScreenState extends State<YetkiliKisiEkleScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:const Color(0xff8FAD4B),
        title: const Text('Yetkili Kişi Ekle'),
        automaticallyImplyLeading: false, 
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: const Color(0xff8FAD4B),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Image.asset('assets/icons/drawericon/musteritedarikciicon.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Ad Soyad', style: TextStyle(color: Colors.white, fontSize: 14)),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.07,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.01,
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    const Text('TELEFON', style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                    const Divider(),
                    const Text('E-POSTA', style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
      
     bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        backgroundColor:const Color(0xff8FAD4B),
         saveButtonFlex: 3, 
          ),
    );
  }
}
