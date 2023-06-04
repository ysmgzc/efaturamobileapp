import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/satislar/satis_siparis/satis_siparis_screen.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';

import '../stoklar_ve_hizmetler/urunler/urunler_screen.dart';

class Perakende extends StatefulWidget {
  const Perakende({super.key});

  @override
  State<Perakende> createState() => _PerakendeState();
}

class _PerakendeState extends State<Perakende> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'Perakende Satış',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2), blurRadius: 3),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: TextFormField(
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "Belge No: ",
                          style: kHintTextStyle,
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                  ),
                ),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: TextField(
                  controller: dateInput,
                  readOnly: false,
                  //kullanıcının tarihi güncellemesi
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() //bugunden baslatmak
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                      print(formattedDate); 
                      setState(() {
                        dateInput.text = 
                        formattedDate;
                      });
                    } else {}
                  },
                  style: const TextStyle(
                    height: 1.7,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    suffixIcon: Icon(Icons.date_range,color: kIconColor,),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "İşlem Tarihi: ",
                          style: kHintTextStyle,
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                  ),
                ),
              ),
              //  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.center,
                child: TextFormField(
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "Açıklama: ",
                          style:kHintTextStyle,
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                  ),
                ),
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  UrunlerScreen(),
                        ),
                      );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.02,
                  ),
                  decoration: const BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      '+ Ürün Ekle',
                      style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ),
                ),
              ),
              
                ],
              ),
            ],
          ),
        ),
      ),
     floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            backgroundColor: kButtonColor,
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  SatisSiparislerScreen(),
                        ),
                      );
            },
            icon: const Icon(Icons.delete_outline),
            label: const Text('Vazgeç'),
            shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 5)),
          ),
          FloatingActionButton.extended(
            backgroundColor: kButtonColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Kaydet'),
                  content:const  Text('Kaydetme işleminiz başarılı.'),
                  actions: [
                    
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(kButtonColor),
                      ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child:const Text('Kapat')
                        )
                  ],
                ),
              );
            },
            icon: const Icon(Icons.save),
            label: const Text('Kaydet'),
            shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 5)),
          ),
        ],
      ),
    );
  }
}
