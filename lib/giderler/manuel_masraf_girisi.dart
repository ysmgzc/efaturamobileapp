/*import 'package:fatura_app_2/masraflar/masraflar.dart';
import "package:flutter/material.dart";
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fatura_app_2/constants.dart';
import 'package:intl/intl.dart';

class ManuelMasraf extends StatefulWidget {
  const ManuelMasraf({super.key});

  @override
  State<ManuelMasraf> createState() => _ManuelMasrafState();
}

class _ManuelMasrafState extends State<ManuelMasraf> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
 bool? value = false;
  String? selectedValue1;
  List<String> items1 = [
  'Ödendi',
  'Ödenmedi',
 'Daha sonra ödenecek',
  ];
  String? selectedValue2;
  List<String> items2 = [
    'Kasa',
    'Banka TL Hesabı',
    'Banka USD Hesabı',
    'Banka EUR Hesabı',
    'Kredi Kartı',
  ];
  String? selectedValue3;
  List<String> items3 = [
  '%0',
  '%1',
  '%18',
  '%20',
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
                'Manuel Masraf Girişi',
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
                          "Ödeme Tarihi: ",
                          style: kHintTextStyle,
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                  ),
                ),
              ),
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
                      "Durumu",
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
              //--------------------------
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
                      "Ödenen Hesap",
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
              //--------------------------------------
               manuelmasrafgirisicontainer1("Tutar: "),
               //--------------------------------------
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
                      "KDV Oranı(%)",
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
               manuelmasrafgirisicontainer1("Açıklama: "),
             
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
                            const  MasraflarScreen(),
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

  Container manuelmasrafgirisicontainer1(String text) {
    return Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              child: TextFormField(
                style: const TextStyle(
                  height: 1.7,
                ),
                decoration: InputDecoration(
                  contentPadding:const EdgeInsets.only(left: 10, top: 10, bottom: 15),
                  prefixIcon: Padding(
                      padding:const EdgeInsets.only(top: 12),
                      child: Text(
                        text,
                        style: kHintTextStyle,
                      )),
                  enabledBorder:const UnderlineInputBorder(
                    borderSide: BorderSide(color: kBorderColor),
                  ),
                  focusedBorder:const UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                ),
              ),
            );
  }
}*/
