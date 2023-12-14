import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/utility/all_color_code.dart';

import '../controllers/create_card_controller.dart';

class AddProfilePicture extends StatelessWidget {
  AddProfilePicture({super.key, required this.controller});
  CreateCardController controller;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CreateCardController());

    return Container(
      height: 250.h,
      decoration: BoxDecoration(
          color: c272C2F,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            topLeft: Radius.circular(20.r),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              controller.getImageFromGallery();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/photo gallery icon.png',
                  height: 70.h,
                  width: 70.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Gallery',
                  style: TextStyle(
                    color: c999999,
                    fontStyle: FontStyle.normal,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.getImageFromCamera();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/camera icon.png',
                  height: 70.h,
                  width: 70.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Camera',
                  style: TextStyle(
                    color: c999999,
                    fontStyle: FontStyle.normal,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
