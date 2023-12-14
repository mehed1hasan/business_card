import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/routes/app_pages.dart';

import '../../../core/global_widget/shared_value.dart';

class AccountDetailsController extends GetxController {
  //TODO: Implement AccountDetailsController


  final emailController = TextEditingController().obs;
  final changeEmailNewEmailController = TextEditingController().obs;
  final changeEmailOldEmailController = TextEditingController().obs;
  final changeEmailNewPassController = TextEditingController().obs;
  final changeEmailOldPassController = TextEditingController().obs;

  final isClick=false.obs;

  accountDelete(){
    clearValue();
    Get.offAllNamed(Routes.LOGIN);
  }



}
