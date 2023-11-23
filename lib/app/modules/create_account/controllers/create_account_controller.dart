import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  //TODO: Implement CreateAccountController

  final count = 0.obs;
  final passController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final fullNameController = TextEditingController().obs;

  // Validation flag
  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isFormValid = false.obs;
  var passShow = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
