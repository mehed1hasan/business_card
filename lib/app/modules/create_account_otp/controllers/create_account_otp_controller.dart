import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



String baseUrl = "http://192.168.145.154:8080";
String createAccountOtpEndPoint = "/api/auth/signup_with_email_verification";

class CreateAccountOtpController extends GetxController {
  //TODO: Implement CreateAccountOtpController

  final otpController = TextEditingController().obs;


  @override
  void onInit() {
    super.onInit();
  }


}
