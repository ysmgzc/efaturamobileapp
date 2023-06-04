import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:efaturamobileapp/constants.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
class AlisRaporu extends StatefulWidget {
  const AlisRaporu({super.key});

  @override
  State<AlisRaporu> createState() => _AlisRaporuState();
}

class _AlisRaporuState extends State<AlisRaporu> {
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
    'Örnek Kategori',
  ];
  String? selectedValue2;
  List<String> items2 = [
   'Hepsi',
   'Örnek Marka',
];
  String? selectedValue3;
  List<String> items3 = [
    'Ürün Bazında',
    'İşlem Bazında',
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
                'Alış Raporu',
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
              ralislarcontainer("Başlangıç Tarihi: "),
              ralislarcontainer("Bitiş Tarihi: "),
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
                      "Kategori",
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
              //-----------------------------
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:const EdgeInsets.only( top: 10),
                  child: DropdownButton2(
                    icon:const Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Icon(Icons.expand_more, color: kIconColor,),
                    ),
                    underline: Container( 
                     height: 2, color: Colors.white60 ),
                    hint:const Text(
                      textAlign: TextAlign.start,
                      "Marka",
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
              //---------------------------
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
                      "Rapor Tipi",
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
                    itemHeight: 40,
                    //itemWidth: 140,
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

  Container ralislarcontainer(String text) {
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
                decoration: InputDecoration(
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
