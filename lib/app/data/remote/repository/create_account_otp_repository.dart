


import 'dart:convert';

import 'package:new_business_card/app/data/remote/model/create_account_otp_post_model.dart';
import 'package:new_business_card/app/data/remote/model/create_account_otp_response_model.dart';
import 'package:http/http.dart' as http;


String baseUrl = "http://192.168.145.154:8080";
String createAccountOtpEndPoint = "/api/auth/signup_with_email_verification";

class CreateAccountOtpRepository{

  Future<CreateAccountOtpResponseModel> signUpOtp(
      {String? fullName, String? email, String? pass, String? otp})async{
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode(CreateAccountOtpPostModel(
        name: fullName,
        username: email,
        password: pass,
        email: email,
        otp: otp,
        socialLoginId: "Email"
    ));

    var url = Uri.parse(baseUrl+createAccountOtpEndPoint);

    var response = await http.post(url, body: body, headers: headers);


    return createAccountOtpResponseModelFromJson(response.body);

  }

}