import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/core/global_widget/card_theme.dart';
import 'package:new_business_card/app/data/remote/repository/get_card_delete_repository.dart';
import 'package:new_business_card/app/routes/app_pages.dart';
import '../../../data/remote/model/get_all_card_model.dart';
import '../../../data/remote/repository/get_all_card_repository.dart';
import '../widget/card_screen_show_modal_bottom_sheet.dart';

class CardsController extends GetxController with GetSingleTickerProviderStateMixin {
   late AnimationController animationControllers;

   //GetAllCardModel? userCardList;
   final userCardList = GetAllCardModel().obs;
   final isLoading = false.obs;
   final currentCardId = 0.obs;
   final currentCardIndex = 0.obs;

  @override
  onInit(){
    getAllCard();
    super.onInit();
    final loginValue = Get.arguments;
    animationControllers = AnimationController(vsync: this, duration: const Duration(milliseconds: 700) );
    /// Method Call ///
  }
  @override
  onClose(){
    // animationControllers.dispose();
  }
   cardBottomSheet(context){
      showModalBottomSheet(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20).r,
          topRight: const Radius.circular(20).r,
        )
      ),
      isScrollControlled: true,
      context: context,
      transitionAnimationController: animationControllers,
      builder: (BuildContext context) {
        return SizedBox(
          height: 715.h,
          child: CardScreenShowModalBottomSheet(currentCardIndex.value,currentCardId.value, CardsController())
        );
      },
    );
  }


  /// Get All card method and GetAllCardRepository Call /////////////////////////
  Future getAllCard() async{

    var response = await GetAllCard().getAllCard();


    if(response.statusCode == 200){
      if (kDebugMode) {
        print("************************* Get all Cards ***********************");
      }
      // isLoading(true);
      userCardList.value = response;
      isLoading(true);
    }else{
      if (kDebugMode) {
        print("++++ Card Controller ++++++++++++${response.statusCode}+++++++++${response.message}+++++++++++");
      }
    }
  }
  /// Card Delete Api Call //////////////////////////////////////////////////////

  Future cardDelete(int id)async{
    final response = await CardDeleteRepository().cardDelete(id);

    if(response.statusCode==200){
      print("**************Card Delete Successfully ****************");
      onInit();
      Get.offAllNamed(Routes.CARDS);
    }

  }


  clipPath(int id){
    if(id==1){
      return Wave();
    }if(id==2){
      return Modern();
    }if(id==3){
      return Sleek();
    }if(id==4){
      return Wave();
    }
  }
}