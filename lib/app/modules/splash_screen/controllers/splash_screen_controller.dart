import 'dart:async';
import 'package:get/get.dart';
import 'package:new_business_card/app/data/remote/repository/token_repository.dart';
import 'package:new_business_card/app/routes/app_pages.dart';
import '../../../core/global_widget/shared_value.dart';
class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    token.load();
    Timer(
    const Duration(seconds: 2), ()async{
      final statusCode = await TokenRepository().postToken(token.$);
      if(token.$.isNotEmpty){
        print("*******Splash Screen Controller: Status code $statusCode *******************");
        if(statusCode==200){
          name.load();
          name.save();
          email.load();
          email.save();
          Get.toNamed(Routes.HOME);
        }
      }else{
        Get.toNamed(Routes.ONBOARD);
      }
    });
  }
}