import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/utility/all_color_code.dart';

import '../controllers/scan_controller.dart';

class ScanView extends GetView<ScanController> {
  const ScanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ScanController>().scanCode();
    return Scaffold(
      backgroundColor: cF2F2FA,
      body: Container(
        margin: EdgeInsets.only(top: 68.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Scan',
              style: TextStyle(
                color: const Color(0xff333333),
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
              ),
            ),
            SizedBox(height: 126.h,),
            Center(
              child: SizedBox(
                height: 160.h,
                width: 160.w,
                child: Image.asset(
                  'assets/scan icon.png'
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            Text(
              'Take a picture of a paper business card and receive an accurate, human verified contact within 24 hours',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: c777777,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 123.h,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize:  Size(375.w, 52.h),
                backgroundColor: const Color(0xff5B2EFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {
                controller.scanCode();
              },
              child: Text(
                'Scan Now',
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
