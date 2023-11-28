import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/show_modal_bottom_sheet.dart';

class CardsController extends GetxController with GetSingleTickerProviderStateMixin {

   late AnimationController animationControllers;

  @override
  onInit(){
    super.onInit();

    animationControllers = AnimationController(vsync: this, duration: const Duration(milliseconds: 700) );


  }

  @override
  onClose(){
    //animationControllers.dispose();
  }

  bottomSheetM(context){
      showModalBottomSheet(
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20).r,
            topRight: const Radius.circular(20).r
            ,
          )
      ),
      isScrollControlled: true,
      context: context,
      transitionAnimationController: animationControllers,
      builder: (BuildContext context) {
        return SizedBox(
          height: 715.h,
          child: ShowModalBottomSheet()
        );
      },
    );
  }

}
