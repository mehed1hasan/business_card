import 'package:get/get.dart';

import '../controllers/preview_card_controller.dart';

class PreviewCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewCardController>(
      () => PreviewCardController(),
    );
  }
}
