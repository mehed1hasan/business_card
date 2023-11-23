import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/global_widget/inpurt_decoration.dart';
import '../controllers/forgote_password_controller.dart';

class ForgotePasswordView extends GetView<ForgotePasswordController> {
  const ForgotePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF2F2FA),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffF2F2FA),
        ),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        //padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 664.h,
          width: double.infinity.w,
          //key: _formkey,
          margin: EdgeInsets.only(top: 103.h, bottom: 148.h, left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,

                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Center(
                child: Text(
                  'Enter your Email for the Verification process, we will send '
                    '4 digits code to your email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff777777),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,

                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              Text(
                'Email Address',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: const Color(0xff333333),
                  fontStyle: FontStyle.normal,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h,),
              /// Email Container
              SizedBox(
                //height: 40.h,
                width: double.infinity.h,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.emailController.value,
                  /// Input Decoration Call here
                  decoration: buildInputDecoration(Icons.mail, "Email Address"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please a Enter Email A';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    controller.emailController.value.text = value;
                  },
                ),
              ),
              SizedBox(height: 30.h,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(375.w, 52.h),
                  backgroundColor: const Color(0xff5B2EFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0).r,
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/reset-password');
                },
                child:Text(
                  "Send Email",
                  style: TextStyle(
                    color: const Color(0xffFFFFFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size(375.w, 52.h),
                  backgroundColor: const Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0).r,
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/login');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/arrow-left.png',
                      height: 18.h,
                      width: 18.w,
                    ),
                    SizedBox(width: 10.w,),
                    Text(
                        "Back to Log-In",
                      style: TextStyle(
                        color: const Color(0xff455468),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
