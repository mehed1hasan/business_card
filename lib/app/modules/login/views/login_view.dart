
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/modules/home/views/home_view.dart';
import 'package:new_business_card/app/modules/login/widget/social_account_image.dart';
import 'package:new_business_card/app/routes/app_pages.dart';

import '../../../core/global_widget/inpurt_decoration.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: const Color(0xffF2F2FA),
       /* appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffF2F2FA),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xffF2F2FA),
          ),

          centerTitle: true,
        ),*/
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 664.h,
            margin: EdgeInsets.only(
                top: 103.h, bottom: 148.h, left: 20.w, right: 20.w),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Welcome Back',
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
                      'It is a long established fact that a reader',
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
                    /*height: 40.h,
                    width: double.infinity.h,*/
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController.value,
                      /// Input Decoration Call
                      decoration: buildInputDecoration(Icons.person,"Email Adress"),
                      validator: (String? value) {
                        print(value);
                        if (value!.isEmpty) {
                          return 'Please a Enter Email';
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
                  SizedBox(height: 16.h,),
                  Row(
                    children: [
                      Text(
                        'Password',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xff333333),
                          fontStyle: FontStyle.normal,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/forgote-password');
                        },
                        child: Text(
                          'Forget Password?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: const Color(0xff777777),
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h,),

                  /// Password
                  SizedBox(

                    // height: 40.h,
                    // width: double.infinity.h,

                    /// Password TextField
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.passController.value,
                      obscureText: controller.passShow.value,
                      /// Input Decoration Call
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                          onTap: (){
                            controller.passShow.value = !controller.passShow.value;
                          },
                          child: Icon(
                              !controller.passShow.value? Icons.visibility_outlined : Icons.visibility_off_outlined
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5).r,
                          borderSide: BorderSide(
                              width: 1.5.w,
                              //color: controller.isEmailValid.value? Colors.green : Colors.red
                              color: const Color(0xffD9D9D9)
                          ),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5).r,
                          borderSide: BorderSide(
                              width: 1.5.w,
                              color: const Color(0xffD9D9D9)
                          ),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius
                              .circular(5).r,
                          borderSide: BorderSide(
                              width: 1.5.w,
                              color: const Color(0xffD9D9D9)
                          ),
                        ),

                      ),
                      validator: (String? value){
                        if(value!.isEmpty)
                        {
                          return 'Please a Enter Password';
                        }
                        else if(value.length < 5){
                          return 'Incorrect Password';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.passController.value.text = value;
                      },
                    ),
                  ),

                  SizedBox(height: 30.h,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(375.w, 48.h),
                      backgroundColor: const Color(0xff5B2EFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0).r,
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        controller.login();
                      } else {
                        Get.snackbar(
                          'Error',
                          'Invalid email or password',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    child: const Text("Sign-In"),
                  ),
                  SizedBox(height: 32.h,),
                  Center(
                    child: Text(
                      'or Continue with',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff777777),
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AccountImage("assets/social icon fb.png", Color(0xff1877F2)),
                      AccountImage("assets/social icon google.png", Color(0xffFFFFFF)),
                      AccountImage("assets/social icon twiter.png", Color(0xff1DA1F2)),
                      AccountImage("assets/social icon apple.png", Color(0xff000000)),
                    ],
                  ),
                  SizedBox(height: 40.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xff555555),
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/create-account');
                        },
                        child: Text(
                          ' Sign-Up',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: const Color(0xff333333),
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
