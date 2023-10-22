import 'dart:convert';
import 'package:efaturamobileapp/constants/globals.dart';
import 'package:efaturamobileapp/models/musteri_kart_model.dart';
import 'package:http/http.dart'as http;

class MusteriServices { 
static Future<List<MusteriKartModel>> musteriData() async {
  final uri = Uri.parse(baseUrl + "/v1/clcard/6231796176/001/01?code=005&definition_=yeşim");

  final response = await http.get(
    uri,
    headers: MyHeaders().myHttpHeaders,
  );

  if (response.statusCode == 200) {
    final List<dynamic> parsed = json.decode(response.body);
    List<MusteriKartModel> body1 = [];

    for (var item in parsed) {
      body1.add(MusteriKartModel.fromJson(item));
    }
    print("deneme"+body1.toString());

    return body1; // Başarılı yanıtı döndür
  } else {
    // İstek başarısız oldu, istisna fırlatın veya hata durumunu ele almak için null veya başka bir değer döndürün.
    throw Exception("İstek başarısız oldu. Hata Kodu: ${response.statusCode}");
  }
}
}