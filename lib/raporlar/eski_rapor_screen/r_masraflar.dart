import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/hesaplar/hesaplar.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
class MasrafRaporu extends StatefulWidget {
  const MasrafRaporu({super.key});

  @override
  State<MasrafRaporu> createState() => _MasrafRaporuState();
}

class _MasrafRaporuState extends State<MasrafRaporu> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
 bool? value = false;
  String? selectedValue1;
  List<String> items1 = [
    'Hepsi',
    'Araç Giderleri',
    'İşletme Giderleri',
    'Personel Giderleri',
  ];
  String? selectedValue2;
  List<String> items2 = [
   'Hepsi',
];
  String? selectedValue3;
  List<String> items3 = [
    'Hepsi',
    'Ödenmişler',
    'Ödenecekler',
    'Tarihi Geçenler',
  ];
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
                'Masraf Raporu',
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
              
              rmasraflarcontainer("Başlangıç Tarihi: "),
              rmasraflarcontainer("Bitiş Tarihi: "),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:const EdgeInsets.only( top: 15),
                  child: DropdownButton2(
                    icon:const Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Icon(Icons.expand_more, color: kIconColor,),
                    ),
                    underline: Container( 
                     height: 2, color: Colors.white60 ),
                    hint:const Text(
                      textAlign: TextAlign.start,
                      "Ana Masraf",
                      style:kHintTextStyle,
                    ),
                    items: items1
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    value: selectedValue1,
                    onChanged: (value) {
                      setState(() {
                        selectedValue1 = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: MediaQuery.of(context).size.width * 0.8,
                    itemHeight: 40,
                    //itemWidth: 140,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:const EdgeInsets.only( top: 8),
                  child: DropdownButton2(
                    icon:const Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Icon(Icons.expand_more, color: kIconColor,),
                    ),
                    underline: Container( 
                     height: 2, color: Colors.white60 ),
                    hint:const Text(
                      textAlign: TextAlign.start,
                      "Alt Masraflar",
                      style:kHintTextStyle,
                    ),
                    items: items2
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    value: selectedValue2,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: MediaQuery.of(context).size.width * 0.8,
                    itemHeight: 40,
                    //itemWidth: 140,
                  ),
                ),
              ),
                
                 Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:const EdgeInsets.only( top: 8),
                  child: DropdownButton2(
                    icon:const Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Icon(Icons.expand_more, color: kIconColor,),
                    ),
                    underline: Container( 
                     height: 2, color: Colors.white60 ),
                    hint:const Text(
                      textAlign: TextAlign.start,
                      "Ödeme Durumu",
                      style:kHintTextStyle,
                    ),
                    items: items3
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    value: selectedValue3,
                    onChanged: (value) {
                      setState(() {
                        selectedValue3 = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: MediaQuery.of(context).size.width * 0.8,
                    itemHeight: 40,//açılırmenü yüksekliği
                    //itemWidth: 140,
                  ),
                ),
              ),
               Container(
                   width: MediaQuery.of(context).size.width*0.8,
                   alignment: Alignment.center,
                  child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const HesaplarScreen()));
                  },
                  
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2.0, 
                          color: Colors.white60))),
                    child:const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                               EdgeInsets.only(left: 1),
                          child: Text(
                            "Ödenen Hesap",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 15.5,
                              color: kTextColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 7),
                          child: Icon(Icons.navigate_next, color: kIconColor),
                        ),
                      ],
                    ),

                    /* Text(
                        textAlign: TextAlign.start,
                        'Ödenen Hesap',
                        style: TextStyle(
                          fontSize: 15.5,
                          color: ktextColor,
                        ),
                      ), */   
                             
                     ),
                ),
                ),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
              ),
              
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
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
                      'Rapor Oluştur',
                      style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Container rmasraflarcontainer(String text) {
    return Container(
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
                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      dateInput.text = 
                      formattedDate;
                    });
                  } else {}
                },
                style: const TextStyle(
                  height: 1.7,
                ),
                decoration:  InputDecoration(
                  contentPadding:const EdgeInsets.only(left: 10, top: 10, bottom: 15),
                  suffixIcon:const Icon(Icons.date_range,color: kIconColor,),
                  prefixIcon: Padding(
                      padding:const EdgeInsets.only(top: 12),
                      child: Text(
                        text,
                        style:kHintTextStyle,
                      )),
                  enabledBorder:const UnderlineInputBorder(
                    borderSide: BorderSide(color: kBorderColor),
                  ),
                  focusedBorder:const UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                ),
              ),
            );
  }
}
