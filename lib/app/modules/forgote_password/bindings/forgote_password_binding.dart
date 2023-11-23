import 'package:get/get.dart';

import '../controllers/forgote_password_controller.dart';

class ForgotePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotePasswordController>(
      () => ForgotePasswordController(),
    );
  }
}
