import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/data/remote/repository/login_repository.dart';
import 'package:new_business_card/app/routes/app_pages.dart';

import '../../../core/global_widget/shared_value.dart';
import '../../../data/remote/model/login_response_model.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  final passController = TextEditingController().obs;
  final emailController = TextEditingController().obs;

  // Validation flag
  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isFormValid = false.obs;
  var passShow = true.obs;
  final loginResponseModel = LoginResponseModel().obs;

  login() async{
    var response = await LoginRepository().login(
      emailController.value.text,
      passController.value.text,
    );
    if(response.statusCode == 200){

      loginResponseModel.value = response;
      bToken.$ = "Bearer ${loginResponseModel.value.data!.apiToken!}";
      token.$ = loginResponseModel.value.data!.apiToken!;
      name.$ = loginResponseModel.value.data!.user!.name!;
      email.$ = loginResponseModel.value.data!.user!.userName!;

      token.save();
      token.load();
      bToken.save();
      bToken.load();

      saveValue();
      loadValue();

      Get.toNamed(Routes.CARDS,);
      emailController.value.clear();
      passController.value.clear();
    }

  }

  @override
  void onInit() {
    super.onInit();
  }



  void increment() => count.value++;
}
