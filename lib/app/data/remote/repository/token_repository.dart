import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../core/global_widget/shared_value.dart';
String baseUrl = "http://192.168.145.154:8080";
String tokenEndPoint = "/api/auth/check-token";

class TokenRepository{
  Future<int> postToken(String? token) async{

    print("********* Token Repository: Bearer $token *******************");

    final headers = {'Content-Type': 'application/json', "Authorization": "Bearer $token"};
    final url = Uri.parse(baseUrl + tokenEndPoint);
    final body = jsonEncode({"token": token});

    final response = await http.post(url, body: body, headers: headers);

    return response.statusCode.toInt();

  }
}