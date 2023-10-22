import 'package:get/get.dart';

String baseUrl = "https://mtxerp.com/mtxsoft_mtxapi1";
String token = "";


class MyHeaders {
  // future token controll
  Map<String, String> myHttpHeaders = {
    'Authorization': 'Bearer '+token,
       // Buraya Authorization tokeninizi ekleyin
    'Content-Type': 'application/json',
  };
  
} 