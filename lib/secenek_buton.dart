import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class SeceneklerButton extends StatefulWidget {
  const SeceneklerButton({Key? key}) : super(key: key);
  
  @override
  _SeceneklerButtonState createState() => _SeceneklerButtonState();
}

class _SeceneklerButtonState extends State<SeceneklerButton> {
  bool showSubMenu = false;
  double buttonHeight = 50.0; // Başlangıçta kullanmak istediğimiz yükseklik

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:const Duration(milliseconds: 200),
      height: showSubMenu ? MediaQuery.of(context).size.height * 0.25 : buttonHeight,
      width: MediaQuery.of(context).size.width * 0.95,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            showSubMenu = !showSubMenu;
          });
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side:const BorderSide(color: Colors.black, width: 0.05),
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: Colors.white,
        ),
      child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
 const  Row(
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

            if (showSubMenu)
             const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Taşıyıcı Firma',
                    style: TextStyle(fontSize: 14, color: yTextColor),
                    maxLines: 1, // En fazla 1 satıra sınırla
                    overflow: TextOverflow.ellipsis, // Metni sınırlara sığmayan kısımlarda ... ile kırp
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Firma Adı',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Icon(Icons.expand_more, color: yTextColor),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.check_box_outline_blank, color: Colors.grey),
                            SizedBox(width: 5),
                            Flexible(
                              child: Text(
                                'Ödemeli (Müşteri\nsipariş tutarı kadar\nborçlanır)',
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
                            Icon(Icons.check_box_outline_blank, color: Colors.grey),
                            SizedBox(width: 5),
                            Flexible(
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
          ],
        ),
      ),
    );
  }
}
