import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/data/local/model/argument_model.dart';

import '../../../data/remote/repository/create_account_otp_repository.dart';
import '../../../routes/app_pages.dart';


String baseUrl = "http://192.168.145.154:8080";
String createAccountOtpEndPoint = "/api/auth/signup_with_email_verification";

class CreateAccountOtpController extends GetxController {
  //TODO: Implement CreateAccountOtpController

  final otpController = TextEditingController().obs;
  var isResponse = true.obs;
  final arguments = ArgumentModel().obs;

  @override
  onInit(){
    super.onInit();
    arguments.value = Get.arguments;
    signUpOtp();
  }

  signUpOtp() async {

    var response = await CreateAccountOtpRepository().signUpOtp(
      fullName: arguments.value.fullName,
      pass: arguments.value.pass,
      email: arguments.value.email,
      otp: otpController.value.text,
    );

    if (response.statusCode == 200) {
      // Navigate to a new page or perform other actions
      otpController.value.clear();
      Get.toNamed(Routes.LOGIN);
      isResponse(true);
    }
    if (kDebugMode) {
      print(
          "*******************************$isResponse****************************");
    }
  }

}
