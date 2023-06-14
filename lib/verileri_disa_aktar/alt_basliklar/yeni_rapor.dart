import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../text_field_decoration.dart';

class YeniRaporEkle extends StatefulWidget {
  const YeniRaporEkle({Key? key}) : super(key: key);

  @override
  State<YeniRaporEkle> createState() => _YeniRaporEkleState();
}

class _YeniRaporEkleState extends State<YeniRaporEkle> {
  @override
  Widget build(BuildContext context) {
      TextEditingController dateInput = TextEditingController();
    
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
          'Yeni Rapor', style: TextStyle(color: Colors.black),
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
              height: MediaQuery.of(context).size.height * 0.01,
            ),
                  const Text('DOSYA ADI', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
                      const Divider(),
                       Container(
        alignment: Alignment.topLeft,
        child: Padding(
          padding:const EdgeInsets.only(left: 8.0),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('DÖNEM TARİHİ', style: TextStyle(color: yTextColor,fontSize: 14)),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.topLeft,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade200,
                    Colors.grey.shade100,
                    Colors.grey.shade50,
                    Colors.white70,
                  ],
                ),
              ),
              child: GestureDetector(
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
      
                if (pickedDate != null) {
                  setState(() {
                    dateInput.text = DateFormat('dd/MM/yyyy').format(pickedDate);
                  });
                }
              },
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.07,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    dateInput.text.isNotEmpty ? dateInput.text : DateFormat('  dd/MM/yyyy').format(DateTime.now()),
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
              
            ),
      
            ),
          ),
        ],
          ),
        ),
      ),
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
