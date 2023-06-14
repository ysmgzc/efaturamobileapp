import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

import '../../bottom_app_bar_desing_save.dart';

class KullaniciBilgileriScreen extends StatefulWidget {
  const KullaniciBilgileriScreen({Key? key}) : super(key: key);

  @override
  State<KullaniciBilgileriScreen> createState() => _KullaniciBilgileriScreenState();
}

class _KullaniciBilgileriScreenState extends State<KullaniciBilgileriScreen> {
  @override
  Widget build(BuildContext context) {
      
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, 
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Kullanıcı Bilgileri', style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
         padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          color: Colors.white,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
             Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('AD', style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          widthFactor: 0.40,
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                     
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text('SOYAD', style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          widthFactor: 0.40,
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                  const Text('E-POSTA', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                      const Divider(),
                       const Text('CEP TELEFONU', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
          ],
        ),
      ),
       bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor:const Color(0xffAC8BB6),
          ),
    );
  }
}
