import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
            margin: EdgeInsets.only(
                top: 103.h, bottom: 148.h, left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Reset Password',
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
                    'Set the new password for your account so you can login and get access all the features.',
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
                  'Secure code',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //SizedBox(height: 8.h,),
                PinCodeFields(
                  length: 5,
                  fieldBorderStyle: FieldBorderStyle.square,
                  responsive: false,
                  fieldHeight: 55.h,
                  fieldWidth: 45.w,
                  borderWidth: 1.0,
                  activeBorderColor: Colors.black45,
                  activeBackgroundColor: Colors.white,
                  borderRadius: BorderRadius
                      .circular(5.0)
                      .r,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  autoHideKeyboard: true,
                  fieldBackgroundColor: Colors.white,
                  borderColor: Colors.black12,
                  //obscureText: true,
                  //obscureCharacter: "*",
                  textStyle: TextStyle(
                    fontSize: 25.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  //onComplete(text) => ,
                  onComplete: (String value) {
                    return print(value);
                  },
                ),
                SizedBox(height: 8.h,),
                Text(
                  'New Password',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.h,),

                /// Password
                SizedBox(
                  // height: 40.h,
                  // width: double.infinity.h,
                  /// Password TextField
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.passController.value,
                    obscureText: controller.passShow.value,

                    /// Input Decoration Call
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      isDense: true,
                      filled: true,
                      fillColor: const Color(0xffFFFFFF),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: const Color(0xff999999),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            controller.passShow.value =
                            !controller.passShow.value;
                          },
                          child: Icon(
                              !controller.passShow.value ? Icons
                                  .visibility_outlined : Icons
                                  .visibility_off_outlined
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius
                            .circular(5)
                            .r,
                        borderSide: BorderSide(
                            width: 1.5.w,
                            //color: controller.isEmailValid.value? Colors.green : Colors.red
                            color: const Color(0xffD9D9D9)
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius
                            .circular(5)
                            .r,
                        borderSide: BorderSide(
                            width: 1.5.w,
                            color: const Color(0xffD9D9D9)
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius
                            .circular(5)
                            .r,
                        borderSide: BorderSide(
                            width: 1.5.w,
                            color: const Color(0xffD9D9D9)
                        ),
                      ),

                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please a Enter Password';
                      }
                      else if (value.length < 5) {
                        return 'Incorrect Password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      controller.passController.value.text = value;
                      //controller.validatePassword();
                      //controller.checkFormValidity();
                    },
                  ),
                ),
                SizedBox(height: 40.h,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(375.w, 52.h),
                    backgroundColor: const Color(0xff5B2EFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0).r,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Reset Password",
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
                      borderRadius: BorderRadius
                          .circular(5.0).r,
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
    });
  }
}
