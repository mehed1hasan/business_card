import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_business_card/app/data/remote/model/create_account_response_model.dart';

String baseUrl = "http://192.168.145.154:8080";
String createAccountEndPoint = "/api/auth/signup_with_email";

class CreateAccountRepository {
  Future<CreateAccountResponseModel> signUp(
      String? fullName, String? email, String pass) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode(CreateAccountPostModel(
        name: fullName,
        username: email,
        password: pass,
        androidToken: "kcjasvckvckaskcjaskcaksc",
        socialLoginId: 1));
    var url = Uri.parse(baseUrl + createAccountEndPoint);

    var response = await http.post(url, body: body, headers: headers);

    return createAccountResponseModelFromJson(response.body);
  }
}
