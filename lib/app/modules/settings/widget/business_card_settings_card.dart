import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_business_card/app/modules/settings/widget/show_all_tipes.dart';

import '../../../routes/app_pages.dart';
import '../controllers/settings_controller.dart';


class BusinessCardSettingCard extends StatelessWidget {
  const BusinessCardSettingCard({required this.controller,super.key});

  final SettingsController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 266.h,
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 15.h, bottom: 15.h),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Show All Tips //////////////////////////////////////////
          InkWell(
            onTap: (){
              Get.bottomSheet(
                  ShowAllTips()
              );
            },
            child: Row(
              children: [
                Text(
                  'Show All Tips',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                const FaIcon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xff999999),
                ),
              ],
            ),
          ),
          //SizedBox(height: 15,),
          const Divider(
            color: Color(0xffEEEEEE),
            //height: 2,
            thickness: 1.5,
          ),

          /// Send Feedback  ///////////////////////////////
          InkWell(
            onTap: (){
              Get.toNamed(Routes.SEND_FEEDBACK);
            },
            child: Row(
              children: [
                Text(
                  'Send Feedback',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                const FaIcon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xff999999),
                ),
              ],
            ),
          ),
          //SizedBox(height: 15,),
          const Divider(
            color: Color(0xffEEEEEE),
            //height: 2,
            thickness: 1.5,
          ),
          /// 3333333333333333333 ///////////////////////////////////////////
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                Text(
                  'Contact Support',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                const FaIcon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xff999999),
                ),
              ],
            ),
          ),
          //SizedBox(height: 15,),
          const Divider(
            color: Color(0xffEEEEEE),
            //height: 2,
            thickness: 1.5,
          ),
          /// 44444444444444444444
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                const FaIcon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xff999999),
                ),
              ],
            ),
          ),
          //SizedBox(height: 15,),
          const Divider(
            color: Color(0xffEEEEEE),
            //height: 2,
            thickness: 1.5,
          ),
          /// 5555555555555555555555555555
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                Text(
                  'Version',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                Text(
                  '1.0.1',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 15,),
          const Divider(
            color: Color(0xffEEEEEE),
            //height: 2,
            thickness: 1.5,
          ),
          /// 6666666666666666666666666666
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                Text(
                  'Check for Update',
                  style: TextStyle(
                    color: const Color(0xff555555),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                const FaIcon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xff999999),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}