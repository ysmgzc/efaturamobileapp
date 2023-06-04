import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/firma_bilgileri/alt_menuleri/kullanici_ekle.dart';
import 'package:flutter/material.dart';

class KayitliKullanicilarScreen extends StatefulWidget {
  const KayitliKullanicilarScreen({Key? key}) : super(key: key);

  @override
  State<KayitliKullanicilarScreen> createState() => _KayitliKullanicilarScreenState();
}

class _KayitliKullanicilarScreenState extends State<KayitliKullanicilarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, 
        title: const Text(
          'Kayıtlı Kullanıcılar', style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                     const  SizedBox(
                      height: 20,
                    ), 
                       Center(
  child: Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: InkWell(
      onTap: () {
      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.14,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:const BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: [
            BoxShadow(
              offset:const Offset(0, 0),
              blurRadius: 20,
              color: Colors.grey.shade300,
            ),
          ],
        ),
        child:const Padding(
          padding:  EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yeşim Gezici",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 3,),
                   Text(
                    "Yönetici",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.navigate_next,
              ),
            ],
          ),
        ),
      ),
    ),
  ),
)

          ],),
            
          ],
        ),
      ),

      
    floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const KullaniciEkleScreen(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
