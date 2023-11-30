import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:new_business_card/app/modules/account_details/controllers/account_details_controller.dart';

import '../../../core/global_widget/inpurt_decoration.dart';

class AlertDialogChangeEmail extends StatelessWidget {
  AlertDialogChangeEmail({super.key});

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final accountDetailsController = AccountDetailsController();
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      content: Builder(
        builder: (context) {
          return Container(
            height:430.h,
            width: 335.w,
            padding: EdgeInsets.only(
                top: 20.h, bottom: 20.h, left: 16.w, right: 16.w),
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10.r)
            ),
            child: Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// Upper Icon Container //////////////////////
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48.r),
                          color: const Color(0xffECFDF3)
                      ),
                      child: Container(
                          height: 48.h,
                          width: 48.w,
                          padding: EdgeInsets.only(
                              top: 12.h, bottom: 12.h, right: 12.w, left: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48.r),
                              color: const Color(0xffD1FADF)
                          ),
                          child: Image.asset(
                            'assets/alert dialog icon/email change.png',
                            height: 24.h,
                            width: 24.w,
                          )
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    Text(
                      'Email Change',
                      style: TextStyle(
                        color: const Color(0xff101828),
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    Text(
                      'Enter your Email to make this change.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff667085),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    /// Old Email Address TextField
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Old Email Address',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xff333333),
                          fontStyle: FontStyle.normal,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    /// Old Email TextField ///////////////////////////
                    Obx(() {
                      return SizedBox(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: accountDetailsController.emailController.value,
                          /// Input Decoration Call
                          decoration: buildInputDecoration(Icons.email, "Old Email Address"),
                          validator: (String? value) {
                            if (kDebugMode) {
                              print(value);
                            }
                            if (value!.isEmpty) {
                              return 'Please a Enter Email';
                            }
                            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                              return 'Please a valid Email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            accountDetailsController.emailController.value.text = value;
                          },
                        ),
                      );
                    }),

                    /// New Email Address
                    SizedBox(height: 16.h,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'New Email Address',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: const Color(0xff333333),
                          fontStyle: FontStyle.normal,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h,),

                    /// New Email TextField ///////////////////////////
                    Obx(() {
                      return SizedBox(
                        child: TextFormField(
                          //key: _formkey,
                          keyboardType: TextInputType.emailAddress,
                          controller: accountDetailsController.emailController.value,

                          /// Input Decoration Call
                          decoration: buildInputDecoration(Icons.email, "New Email Address"),
                          validator: (String? value) {
                            if (kDebugMode) {
                              print(value);
                            }
                            if (value!.isEmpty) {
                              return 'Please a Enter Email';
                            }
                            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                              return 'Please a valid Email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            accountDetailsController.emailController.value.text = value;
                          },
                        ),
                      );
                    }),

                    SizedBox(height: 24.h,),
                    /// Export Contact Button ////////////////////////////
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(303.w, 52.h),
                        backgroundColor: const Color(0xff5B2EFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0).r,
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Get.snackbar(
                            'Okke Boss',
                            'Successfully Done !!',
                            snackPosition: SnackPosition.TOP,
                          );
                        } else {
                          Get.snackbar(
                            'Error',
                            'Something went wrong',
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      },
                      child: const Text("Confirm"),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
