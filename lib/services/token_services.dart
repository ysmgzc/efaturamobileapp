import 'dart:convert';
import 'package:efaturamobileapp/constants/globals.dart';
import 'package:efaturamobileapp/models/token_model.dart';
import 'package:http/http.dart'as http;

class TokenServices {
 
  static Future<TokenModel> tokenData() async { 
  final Map<String, String> data = {
    "name": "TT",
    "password": "1234",
  };

  final response = await http.post(
    Uri.parse(baseUrl + "/v1/auth/6231796176"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(data),
  );

  if (response.statusCode == 200) {
    // Başarılı bir şekilde yanıt alındı.
    print("Başarılı Yanıt: ${response.body}");

    // JSON yanıtı işlemek için kullanabilirsiniz.
    final parsedData = jsonDecode(response.body);
    print("name: ${parsedData['name']}");
    print("password: ${parsedData['password']}");
    var body1 = TokenModel.fromJson(parsedData);
    return body1;
  } else {
    // İstek başarısız oldu, istisna fırlatın veya bir hata değeri döndürün.
    throw Exception("İstek başarısız oldu. Hata Kodu: ${response.statusCode}");
  }
}


}

  