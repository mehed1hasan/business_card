import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/modules/settings/widget/business_card_settings_card.dart';
import 'package:new_business_card/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Get.find<SettingsController>();
    Get.put(SettingsController());
    return Scaffold(
      backgroundColor: const Color(0xffF2F2FA),
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Text(
              'Settings',
              style: TextStyle(
                color: Color(0xff333333),
                fontWeight: FontWeight.w700,
                fontSize: 26,
              ),
            ),
            SizedBox(height: 16.h,),
            InkWell(
              onTap: (){
                Get.toNamed(Routes.ACCOUNT_DETAILS);
              },
              child: Container(
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
                  trailing: FaIcon(
                    Icons.arrow_forward_ios,
                    size: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            ///   Business Card ////////////////////////////////////
            Text(
              'Business Card',
              style: TextStyle(
                color: const Color(0xff333333),
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(height: 8.h,),
            ///  /////  Widget Call   ///////////////////////////////////////////
            BusinessCardSettingCard(controller: controller,),
            SizedBox(height: 16.h,),
            ///    Preference ///////////////////////////////////////
            Text(
              'Preference',
              style: TextStyle(
                color: const Color(0xff333333),
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(height: 8.h,),
            Container(
              height: 55.h,
              padding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(8).r,
              ),
              child: GestureDetector(
                onTap: (){

                },
                child: Row(
                  children: [
                    Text(
                      'Permissions',
                      style: TextStyle(
                        color: const Color(0xff555555),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      ),
                    ),
                    const Spacer(),
                    FaIcon(
                      Icons.arrow_forward_ios,
                      size: 20.sp,
                      color: const Color(0xff999999),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/heart icon.png',
                  height: 24.h,
                  width: 24.w,
                ),
                SizedBox(width: 8.w,),
                Text(
                  'Loving Business Card?',
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h,),
            GestureDetector(
              onTap: (){

              },
              child: Center(
                child: Text(
                  'Leave a Review',
                  style: TextStyle(
                    color: const Color(0xff760BFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
