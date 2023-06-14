
import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../text_field_decoration.dart';

class FaturaNumaralariScreen extends StatefulWidget {
  const FaturaNumaralariScreen({Key? key}) : super(key: key);

  @override
  State<FaturaNumaralariScreen> createState() => _FaturaNumaralariScreenState();
}

class _FaturaNumaralariScreenState extends State<FaturaNumaralariScreen> {
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
          'Fatura Numaraları', style: TextStyle(color: Colors.black),
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
             const Text('TOPTAN SATIŞ FATURASI', style: TextStyle(color: yTextColor, fontSize: 14)),
                const SizedBox(height: 8),
                TextFieldDecoration(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  hintText: '0000000000000001',
                ),
                const Divider(),
                const Text('PERAKENDE SATIŞ FATURASI', style: TextStyle(color: yTextColor, fontSize: 14)),
                const SizedBox(height: 8),
                 TextFieldDecoration(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  hintText: '0000000000000001',
                ),
          ],
        ),
      ),
        bottomNavigationBar: BottomAppBarDesign(
          saveButtonText: "EKLE",
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor:const Color(0xffAC8BB6),
          ),
    );
  }
}

