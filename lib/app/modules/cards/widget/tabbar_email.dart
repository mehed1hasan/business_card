import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/global_widget/inpurt_decoration.dart';

class EmailTabbar extends StatelessWidget {
  const EmailTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(height: 40,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Full Name',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xff333333),
                fontStyle: FontStyle.normal,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8,),
          /// Name Box
          SizedBox(
            //height: 40.h,
            width: double.infinity.h,

            /// Name ///////////////
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              //controller: controller.fullNameController.value,
              decoration: buildInputDecoration(Icons.mail, "Name"),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Please a Enter Name';
                }
                return null;
              },
              onChanged: (String value){
                //controller.fullNameController.value.text = value;
              },
            ),
          ),
          const SizedBox(height: 16,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email Address',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xff333333),
                fontStyle: FontStyle.normal,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8,),

          /// Email Container
          SizedBox(
            //height: 40.h,
            width: double.infinity.h,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              //controller: controller.emailController.value,
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
                //controller.emailController.value.text = value;
              },
            ),
          ),
          const SizedBox(height: 16,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Message',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xff333333),
                fontStyle: FontStyle.normal,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8,),
          /// Message Box
          SizedBox(
            //height: 84.h,
            width: double.infinity.h,
            /// Message  ///////////////
            child: TextFormField(
              keyboardType: TextInputType.text,
              //controller: controller.fullNameController.value,
              decoration: buildInputDecoration(Icons.mail, "Write Your Message Here"),
            ),
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Text(
                'Optional',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff777777),
                  fontStyle: FontStyle.normal,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                '1/100',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff777777),
                  fontStyle: FontStyle.normal,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
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
            onPressed: () {

            },
            child: const Text("Sign-In"),
          ),


        ],
      ),
    );
  }
}
