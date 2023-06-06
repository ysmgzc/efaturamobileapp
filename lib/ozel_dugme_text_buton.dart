import 'package:flutter/material.dart';

class OzelDugme extends StatelessWidget {
  final String metin;
  final String baslik;
  final String aciklama;
  final TextInputType keyboardType;
  final void Function(String) onEkle;
  final String hintText;

  const OzelDugme({
    Key? key,
    required this.metin,
    required this.baslik,
    required this.aciklama,
    required this.keyboardType,
    required this.onEkle,
    required this.hintText,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.9,
      height: screenHeight * 0.07,
      child: ElevatedButton(
        onPressed: () {
          TextEditingController controller = TextEditingController();

          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  baslik,
                  style:const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      aciklama,
                      style:const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  const  SizedBox(height: 10.0),
                    TextField(
                      controller: controller,
                      keyboardType: keyboardType,
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle:const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        focusedBorder:const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        enabledBorder:const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      onEkle(controller.text);
                      Navigator.of(context).pop();
                    },
                    child:const Text(
                      'EKLE',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          textStyle: MaterialStateProperty.all( const  TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            decoration: TextDecoration.none,
          )),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 10.0,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          const  SizedBox(width: 10.0),
            Text(
              metin,
              style:const TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
