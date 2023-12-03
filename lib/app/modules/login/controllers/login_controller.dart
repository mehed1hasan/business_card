import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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




  login(){

    


  }

















  // Validate email format
  /*void validateEmail() {
    isEmailValid.value = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(emailController.value.text);
  }

  // Validate password (add your own password validation logic)
  void validatePassword() {
    isPasswordValid.value = passController.value.text.length >= 6; // Example: Minimum 6 characters
  }

  // Check if the form is valid
  void checkFormValidity() {
    isFormValid.value = isEmailValid.value && isPasswordValid.value;
  }*/


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
