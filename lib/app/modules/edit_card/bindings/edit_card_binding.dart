import 'package:get/get.dart';

import '../controllers/edit_card_controller.dart';

class EditCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditCardController>(
      () => EditCardController(),
    );
  }
}
