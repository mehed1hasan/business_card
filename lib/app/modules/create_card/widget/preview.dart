import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../core/global_widget/card_theme.dart';
import '../controllers/create_card_controller.dart';

class Preview extends StatelessWidget {
  Preview({required this.controller, super.key});

  CreateCardController controller;
  ///final editCardController = EditCardController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80.h, left: 20.w, right: 20.w),
      color: Colors.white,
      child: Column(
        children: [
          /// Back To Edit Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(375.w, 48.h),
              //backgroundColor: const Color(0xff5B2EFF),
              backgroundColor: HexColor(
                  controller.themeColorList[controller.currentColorIndex.value]
                      .toString()),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onPressed: () {
              //controller.isPreview.value = 1;
              Get.back();
            },
            child: Text("Back to Edit",
                style: TextStyle(
                  //color:const Color(0xFF777777),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                )
            ),
          ),
          //SizedBox(height: 10.h,),
          Obx(() {
            return  /*controller.imagePath.isNotEmpty? */Container(
              height: 600.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: FileImage(File(controller.imagePath.toString()))
                ),
              ),
              child: ClipPath(
                clipper: controller.currentDesignIndex.value==0?Wave():
                controller.currentDesignIndex.value==1?Modern():Sleek(),
                child: Container(
                  height: 300.h,
                  width: double.infinity,
                  color: HexColor(
                      controller.themeColorList[controller.currentColorIndex.value].toString()
                  ),
                  child: const Column(
                    children: [],
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
