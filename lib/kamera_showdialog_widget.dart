import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<dynamic> KameraShowDialogWidget(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:const Text('Seç',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                const  Icon(Icons.camera_alt),
                  TextButton(
                    onPressed: () {
                      _kameradanResimSec();
                    },
                    child:const Text('Kamera',style: TextStyle(color: Colors.black,fontSize: 14),),
                  ),
                ],
              ),
           const   SizedBox(height: 15,),
              Row(
                children: [
              const    Icon(Icons.image),
                  TextButton(
                    onPressed: () {
                      _galeridenResimSec();
                    },
                    child:const Text('Galeri',style: TextStyle(color: Colors.black,fontSize: 14),),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              child:const Text('Vazgeç',style: TextStyle(color: Colors.black,fontSize: 14),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}

Future<XFile?> _kameradanResimSec() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.camera);
  return image;
}

Future<XFile?> _galeridenResimSec() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  return image;
}
