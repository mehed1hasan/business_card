import 'package:get/get.dart';

import '../controllers/all_contacts_controller.dart';

class AllContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllContactsController>(
      () => AllContactsController(),
    );
  }
}
