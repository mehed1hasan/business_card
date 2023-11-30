import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/core/global_widget/inpurt_decoration.dart';
import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  CreateAccountView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
            margin: const EdgeInsets.only(top: 103, bottom: 148, left: 20, right: 20),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const Center(
                    child: Text(
                      'It is a long established fact that a reader',
                      style: TextStyle(
                        color: Color(0xff777777),
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  const Text(
                    'Full Name',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8,),

                  /// Full Name Box
                  SizedBox(
                    //height: 40.h,
                    width: double.infinity.h,

                    /// Full Name
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.fullNameController.value,
                      decoration: buildInputDecoration(Icons.mail, "Full Name"),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter Name';
                        }
                        return null;
                      },
                      onChanged: (String value){
                        controller.fullNameController.value.text = value;
                      },
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const Text(
                    'Email Address',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8,),

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
                  const SizedBox(height: 16,),
                  const Text(
                    'Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8,),

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
                      fixedSize: const Size(375, 48),
                      backgroundColor: const Color(0xff5B2EFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate() /*&& controller.isResponse==true*/) {

                        controller.signUp();
                      } else {
                        Get.snackbar(
                          'Error',
                          'Something went wrong',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    child: const Text("Create Account"),
                  ),
                  const SizedBox(height: 32,),


                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an Account?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xff555555),
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/login');
                        },
                        child: const Text(
                          ' Sign-In',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontStyle: FontStyle.normal,
                            fontSize: 12,
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
