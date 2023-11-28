import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<SettingsController>();

    return Scaffold(
      backgroundColor: const Color(0xffF2F2FA),
      body: Container(
        margin: const EdgeInsets.only(top: 44),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              'Settings ${controller.count}',
              style: const TextStyle(
                color: Color(0xff333333),
                fontWeight: FontWeight.w700,
                fontSize: 26,
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              height: 77.h,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'Nam Nai',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                'Code Kore Khai',
                style: TextStyle(
                  color: Color(0xff777777),
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}















/*
Scaffold(
        backgroundColor: const Color(0xffF2F2FA),
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 130.h,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/bg card screen.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 201.h,
                  width: double.infinity,
                  margin: EdgeInsets.only(top:105.h, left: 20.w, right: 20.w),
                  padding: EdgeInsets.only(top: 60.h, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15.h),
                      border: Border.all(color: const Color(0xffDDDDDD), width: .5)
                  ),
                  child: Column(
                    children: [
                      //SizedBox(height: 60.h,),
                      Text(
                        'Nam Nai',
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff333333),
                        ),
                      ),
                      Text(
                        'code kore khai',
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff555555),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 55.h, left: 137.5.w, right: 137.5.w, bottom: 10.h),
                  height: 100.h,
                  width: 100.w,
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      'assets/fb icon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 24.h,),

          ],
        )
    );
*/