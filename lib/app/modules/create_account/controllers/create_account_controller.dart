import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/data/local/model/argument_model.dart';
import 'package:new_business_card/app/data/remote/model/create_account_response_model.dart';

import '../../../data/remote/repository/create_account_repository.dart';
import '../../../routes/app_pages.dart';

String baseUrl = "http://192.168.145.154:8080";
String createAccountEndPoint = "/api/auth/signup_with_email";

class CreateAccountController extends GetxController {
  //TODO: Implement CreateAccountController

  final passController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final fullNameController = TextEditingController().obs;

  // Validation flag
  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isFormValid = false.obs;
  var passShow = true.obs;
  var isResponse = false.obs;

  final createAccountResponseModel = CreateAccountResponseModel().obs;

  signUp() async {
    var response = await CreateAccountRepository().signUp(
      fullNameController.value.text,
      emailController.value.text,
      passController.value.text,
    );

    if (response.statusCode == 200) {
      // Navigate to a new page or perform other actions

      Get.toNamed(Routes.CREATE_ACCOUNT_OTP, arguments: ArgumentModel(
        email: emailController.value.text,
        fullName: fullNameController.value.text,
        pass: passController.value.text,
      ));
      emailController.value.clear();
      passController.value.clear();
      fullNameController.value.clear();

      isResponse(true);
    }
    if (kDebugMode) {
      print(
          "*****************************$isResponse****************************");
    }
  }
}
