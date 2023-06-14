import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import '../../active_switch.dart';
import '../../text_field_decoration.dart';

class KullaniciEkleScreen extends StatefulWidget {
  const KullaniciEkleScreen({Key? key}) : super(key: key);

  @override
  State<KullaniciEkleScreen> createState() => _KullaniciEkleScreenState();
}

class _KullaniciEkleScreenState extends State<KullaniciEkleScreen> {
  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, 
        title: const Text(
          'Kullanıcı Ekle', style: TextStyle(color: Colors.black),
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
                         const Divider(),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Mali Müşavir',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: ActiveSwitch(
                        onChanged: (bool value) {},
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Aktif',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: ActiveSwitch(
                        onChanged: (bool value) {},
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
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
