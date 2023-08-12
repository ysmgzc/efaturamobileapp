import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class SeceneklerButton extends StatefulWidget {
  const SeceneklerButton({Key? key}) : super(key: key);

  @override
  _SeceneklerButtonState createState() => _SeceneklerButtonState();
}

class _SeceneklerButtonState extends State<SeceneklerButton> {
  bool showSubMenu = false;
  final double buttonHeight = 50.0;
  int selectedOption = 0; 

  @override
  Widget build(BuildContext context) {
    double subMenuHeight = MediaQuery.of(context).size.height * 0.22;
    
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: showSubMenu ? buttonHeight + subMenuHeight : buttonHeight,
      width: MediaQuery.of(context).size.width * 0.95,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            showSubMenu = !showSubMenu;
          });
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black, width: 0.05),
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SEÇENEKLER',
                    style: TextStyle(fontSize: 16, color: yTextColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.expand_more, color: yTextColor),
                ],
              ),
              if (showSubMenu) const SizedBox(height: 10),
              if (showSubMenu) 
               const Text(
                  'Taşıyıcı Firma',
                  style: TextStyle(fontSize: 14, color: yTextColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              if (showSubMenu) const SizedBox(height: 10),
              if (showSubMenu) 
              const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Firma Adı',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    Icon(Icons.expand_more, color: yTextColor),
                  ],
                ),
              if (showSubMenu)const SizedBox(height: 10),
              if (showSubMenu) 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: selectedOption == 1,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedOption = 1;
                                }
                              });
                            },
                          ),
                       const   Flexible(
                            child: Text(
                              'Ödemeli (Müşteri sipariş tutarı kadar borçlanır)',
                              style: TextStyle(color: yTextColor),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: selectedOption == 2,
                            onChanged: (value) {
                              setState(() {
                                if (value!) {
                                  selectedOption = 2;
                                }
                              });
                            },
                          ),
                        const  Flexible(
                            child: Text(
                              'Ürünler rezerve edilir.',
                              style: TextStyle(color: yTextColor),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
