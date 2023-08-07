//detaylı aramanın tum seçeneklerinin bulunduğuu sayfa
import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/check_box_widget.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetayliAramaScreen extends StatefulWidget {
  const DetayliAramaScreen({super.key});

  @override
  State<DetayliAramaScreen> createState() => _DetayliAramaScreenState();
}

class _DetayliAramaScreenState extends State<DetayliAramaScreen> {
  bool value = false;
    TextEditingController dateInput = TextEditingController();
     String? selectedValue;
  List<String> items = <String>[
    'TL',
    'EUR',
    'GBP',
    'CHF',
    'JPY',
    'AZM',
    'BGN',
    'CNY',
    'USD',
    'PLN',
    'RUB',
    'SGD',
    'DZD',
    'XAU',
    'UZS',
    'MKD',
    'KGS',
  ];
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
        title:const Text(
          'Detaylı Arama',style: TextStyle(color: Colors.black),
        ),
      ),
    
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
        child:Column(children: [
//------------------------"İşlem Tipi"------------------------------------------
               DetayliAramaWidget(
                altMetin:"Tümü",
              metin: "İşlem Tipi",
               onTap: () {
                    showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "İşlem Tipi",
      checkboxTexts: [
        "Perakede Satış Faturası",
        "Toptan Satış Faturası",
      ],
    );
  },
);  
      },  ),
//----------------------Tarih-------------------------------------------------------
          DetayliAramaWidget(
            metin: "Tarih",
            onTap: () {
             showDialog(
            context: context,
            builder: (BuildContext context) {
              return const CustomDatePickerDialog(
                titleText: 'Tarih',
                startText: 'Başlangıç Tarihini Seç',
                endText: 'Bitiş Tarihini Seç',
              );
            },
          );

            },
          ),
//-----------------------------İptal Edilenler-----------------------------------------------------
  Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'İptal Edilenler',
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
//--------------------------------'Ödenmemiş Faturalar'---------------------------------------
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Ödenmemiş Faturalar',
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

//---------------------Vade Tarihi-------------------------------------------------
          DetayliAramaWidget(
            metin: "Vade Tarihi",
            onTap: () {
              showDialog(
            context: context,
            builder: (BuildContext context) {
              return const CustomDatePickerDialog(
                titleText: 'Tarih',
                startText: 'Başlangıç Tarihini Seç',
                endText: 'Bitiş Tarihini Seç',
              );
            },
          );
            },
            altMetin:"Tümü",
          ),
//----------------------Tutar------------------------------------------------------
          DetayliAramaWidget(
            metin: "Tutar",
            altMetin:"Tümü",
            onTap: () {
               showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Tutar'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('MİN TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                        hintText: "0,00",
                      ),
               const Divider(),
                 const Text('MAX TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                        hintText: "0,00",
                      ),
              const  Divider(),
                CustomPopMenuWidget(
                  width: screenWidth * 0.65,
                  title: "PARA BİRİMİ",
                  menuWidth: screenWidth * 0.65,
                  selectedValue: "TL",
                  items: items,
                  menuItemsWidth: screenWidth * 0.65,
                ),
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Temizle'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); // Dialog penceresini kapat
          },
        ),
      ],
        );
      },
    );
  },
          ),
//---------------------Kategori--------------------------------------------------------------
          DetayliAramaWidget(
            metin: "Kategori",
            altMetin:"Tümü",
            onTap: () { showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Kategori'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                      ),
              const  Divider(),
                
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Vazgeç'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); 
        },
        ),
      ],
        );
      },
    );
  },
          ),
//---------------------Marka--------------------------------------------------------------
          DetayliAramaWidget(
            metin: "Marka",
            altMetin:"Tümü",
            onTap: () { showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Marka'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                      ),
              const  Divider(),
                
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Vazgeç'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); 
        },
        ),
      ],
        );
      },
    );
  },
          ),
//---------------------Hizmet Grubu-----------------------------------------------------------
          DetayliAramaWidget(
            metin: "Hizmet Grubu",
            onTap: () {},
            altMetin:"Tümü",
          ),
//------------------------"Tür"------------------------------------------
               DetayliAramaWidget(
                altMetin:"Tümü",
              metin: "Tür",
               onTap: () {
                    showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Tür",
      checkboxTexts: [
        "Alınan Hizmet",
        "Verilen Hizmet",
      ],
    );
  },
);  
      },  ),
//---------------------Muhsasebe Notu-----------------------------------------------------------
          DetayliAramaWidget(
            metin: "Muhsasebe Notu",
            altMetin:"Tümü",
            onTap: () {
                 showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Muhsasebe Notu",
      checkboxTexts: [
        "İşlem bekliyor",
        "Muhasebeleşti",
        "Kaydedilmedi",
        "Muhasebeleşmeyecek",
      ],
    );
  },
);  
      },   ),
//-------------------Makbuz Türü-----------------------------------------------------------------------
           DetayliAramaWidget(
            metin: "Makbuz Türü",
            altMetin:"Tümü",
           onTap: () {
              showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Makbuz Türü",
      checkboxTexts: [
        "Kağıt",
        "E-SMM",
      ],
    );
  },
);  }, 
       ),
//-------------------E-SMM Durumu--------------------------------------------------
        DetayliAramaWidget(
            metin: "E-SMM Durumu",
            altMetin:"Tümü",
           onTap: () {
              showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "E-SMM Durumu",
      checkboxTexts: [
        "Henüz imzaya\ngönderilmedi",
        "E-makbuz oluşturuldu",
        "E-makbuz paketlendi",
        "Sunucuya iletildi",
        "Başarılı",
        "Hata Alındı",
        "İptal Edildi",
      ],
    );
  },
);    
      }, ),
//-------------------Sipariş Durumu-----------------------------------------------------------
        DetayliAramaWidget(
            metin: "Sipariş Durumu",
            altMetin:"Tümü",
           onTap: () {
            showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Tür",
      checkboxTexts: [
        "Kapanmış",
        "Bekleyen",
        "İptal",
        "Sevk Ediliyor",
      ],
    );
  },
);}, ),
//---------------------Ödeme Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Ödeme Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "E-SMM Durumu",
      checkboxTexts: [
        "Ödendi",
        "Ödenecek",
      ],
    );
  },
); }, ),
//---------------------Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Durumu",
      checkboxTexts: [
        "Aktif",
        "Pasif",
      ],
    );
  },
); }, ),
//---------------------Bakiye Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Bakiye Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Bakiye Durumu",
      checkboxTexts: [
        "Tahsil Edilecek",
        "Ödenecek",
      ],
    );
  },
); }, ),
//----------------------Müşteri & Tedarikçi Tipi---------------------------------------------
 DetayliAramaWidget(
            metin: "Müşteri & Tedarikçi Tipi",
            altMetin:"Tümü",
            onTap: () {
                 showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Müşteri & Tedarikçi Tipi",
      checkboxTexts: [
        "Müşteri / Tedarikçi",
        "Müşteri",
        "Tedarikçi",
      ],
    );
  },
);  
      },   ),
        ],)
           
        ),
      ),
    bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonText: "SONUÇLARI GÖSTER",
        saveButtonBackgroundColor: Colors.blue,
          ),
    );
  }

 
}

//--------------------------------------------------------------------------
class DetayliAramaWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String metin;
  final String? altMetin;

  const DetayliAramaWidget({
    required this.onTap,
    required this.metin,
     this.altMetin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 12,bottom: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     Text(metin, style:const TextStyle(fontSize: 16,)),
                    Text(altMetin??"", style:const TextStyle(fontSize: 14,color: Colors.grey)),
                  ],
                ),
               const Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//--------------------------------------------------------------------
class ShowDialogCheckBox extends StatefulWidget {
  final String dialogTitle;
  final List<String> checkboxTexts;

 const ShowDialogCheckBox({
    Key? key,
    required this.dialogTitle, 
    required this.checkboxTexts
    }): super(key: key);

  @override
  _ShowDialogCheckBoxState createState() => _ShowDialogCheckBoxState();
}

class _ShowDialogCheckBoxState extends State<ShowDialogCheckBox> {
  late List<bool> checkboxValues;

  @override
  void initState() {
    super.initState();
    checkboxValues = List.filled(widget.checkboxTexts.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.dialogTitle,
        style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.checkboxTexts.asMap().entries.map<Widget>((entry) {
            int idx = entry.key;
            String text = entry.value;
            return Column(
              children: [
                Row(
                  children: [
                    CheckBoxWidget(
                      value: checkboxValues[idx],
                      onChanged: (bool? newValue) {
                        if (newValue != null) {
                          setState(() {
                            checkboxValues[idx] = newValue;
                          });
                        }
                      },
                    ),
                    Text(text),
                  ],
                ),
              const  SizedBox(height: 5),
              ],
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              for(int i = 0; i < checkboxValues.length; i++) {
                checkboxValues[i] = true;
              }
            });
          },
          child:const Text('Tümünü Seç'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child:const Text('Kaydet'),
        ),
      ],
    );
  }
}

//---------------------------------------------------------------------------------

class CustomDatePickerDialog extends StatefulWidget {
  final String titleText;
  final String startText;
  final String endText;

  const CustomDatePickerDialog({
    Key? key, 
    this.titleText = 'Vade Tarihi',
     this.startText = 'BAŞLANGIÇ TARİHİ',
      this.endText = 'BİTİŞ TARİHİ'
      }): super(key: key);

  @override
  _CustomDatePickerDialogState createState() => _CustomDatePickerDialogState();
}

class _CustomDatePickerDialogState extends State<CustomDatePickerDialog> {
  late TextEditingController startDateController;
  late TextEditingController endDateController;

  @override
  void initState() {
    super.initState();
    startDateController = TextEditingController();
    endDateController = TextEditingController();
  }

  Future<void> _showDatePicker(TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        controller.text = DateFormat('dd/MM/yyyy').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.titleText),
      content: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.startText, style:const TextStyle(color: Colors.black, fontSize: 14)),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () => _showDatePicker(startDateController),
                  child: _buildDatePickerWidget(startDateController),
                ),
                const Divider(height: 10,),
                Text(widget.endText, style:const TextStyle(color: Colors.black, fontSize: 14)),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () => _showDatePicker(endDateController),
                  child: _buildDatePickerWidget(endDateController),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Temizle'),
          onPressed: () {
            setState(() {
              startDateController.text = '';
              endDateController.text = '';
            });
          },
        ),
        TextButton(
          child: const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
      ],
    );
  }

  Widget _buildDatePickerWidget(TextEditingController controller) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.07,
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
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            controller.text.isNotEmpty
                ? controller.text
                : DateFormat('dd/MM/yyyy').format(DateTime.now()),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

//---------------------------------------------------------------
