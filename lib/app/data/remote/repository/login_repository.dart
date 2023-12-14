import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:new_business_card/app/data/remote/model/login_post_model.dart';
import 'package:new_business_card/app/data/remote/model/login_response_model.dart';

String baseUrl = "http://192.168.145.154:8080";
String loginEndPoint = "/api/auth/login_with_email";
class LoginRepository{
  Future<LoginResponseModel> login(String? email, String pass) async{
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode(
      LoginPostModel(
        username: email,
        password: pass,
      ),
    );
    var url = Uri.parse(baseUrl + loginEndPoint);
    var response = await http.post(url, body: body, headers: headers);
    if (kDebugMode) {
      print("Response Body ***************${response.body}**************");
    }
    return loginResponseModelFromJson(response.body);
  }

}
