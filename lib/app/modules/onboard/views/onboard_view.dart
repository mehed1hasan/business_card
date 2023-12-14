import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/onboard_controller.dart';
class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Column(
        children: [
          SizedBox(
            height: 556,
            child: OnBoardingSlider(
              headerBackgroundColor: Colors.white,
              pageBackgroundColor: Colors.white,
              /*finishButtonText: 'Register',
              finishButtonStyle: const FinishButtonStyle(
                backgroundColor: Colors.white,
              ),*/
              hasFloatingButton: false,
              skipTextButton: InkWell(
                onTap: (){
                  Get.toNamed('/login');
                },
                child: Text(
                    'Skip',
                  style: TextStyle(
                    color: const Color(0xff5B2EFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              trailing: InkWell(
                onTap: (){
                  Get.toNamed('/login');
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: const Color(0xff5B2EFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              background: [
                Container(
                  margin: EdgeInsets.only(top:140.h,left: 58.w, right: 59.w),
                  child: Image.asset('assets/onboard image1.png')
                ),
                Container(
                  margin: EdgeInsets.only(top:80.h,bottom: 365.h, left: 24.w, right: 25.w),
                  child:  Image.asset('assets/onboard image2.png'),

                ),
                Container(
                  margin: EdgeInsets.only(top:40.h,bottom: 365.h, left: 109.w, right: 109.w),
                  child:  Image.asset('assets/onboard image3.png'),

                ),
              ],
              centerBackground: true,
              totalPage: 3,
              speed: 1,
              pageBodies:  [
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 276.h,
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  "There are many variations of passages of Lorem",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:const Color(0xff333333),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8,),
                Text(
                  "It is a long established fact that a reader will be distracted by the readable content.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:const Color(0xff777777),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 32.h,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(375.w, 48.h),
                    backgroundColor: const Color(0xff5B2EFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius
                          .circular(5.0).r,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed('/create-account');
                  },
                  child: Text(
                  "Create Account",
                  style: TextStyle(
                    color:const Color(0xffFFFFFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(375.w, 48.h),
                    backgroundColor: const Color(0xffEEECFA),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.5,
                        color: Color(0xff5B2EFF)
                      ),
                      borderRadius: BorderRadius.circular(5.0).r,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child:Text(
                    "Sign In",
                    style: TextStyle(
                      color:const Color(0xff5B2EFF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
