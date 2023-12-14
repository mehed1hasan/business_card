import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/utility/all_color_code.dart';

import '../controllers/send_feedback_controller.dart';

class SendFeedbackView extends GetView<SendFeedbackController> {
  const SendFeedbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            SizedBox(height: 62.h,),
            Row(
              children: [

                IconButton(
                  onPressed: (){Get.back();},
                  icon: Icon(Icons.arrow_back_ios_new_rounded,color: c333333,size: 20.r,),
                ),
                Text(
                    "Send Feedback",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: c333333,
                    )
                )
              ],
            ),/// app bar
            SizedBox(height: 24.h,),
            TextFormField(
              maxLines: 10,
              controller: controller.feedbackController.value,
              validator: (value) {
                if(controller.feedbackController.value.text.isNotEmpty) {
                  return null;
                }
                return "Write feedback";
              },
              decoration: InputDecoration(
                hintText: "Write Your Feedback Here",
                // isCollapsed: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: c999999,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: cD0D5DD,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: cD0D5DD,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: const TextStyle(

                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.feedbackController.value.text.isNotEmpty) {

                } else {
                  Get.snackbar("No Feedback Added", "please write something");
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: c5B2EFF,
                fixedSize: Size(Get.width, 50.h),
              ),
              child: Text("Send Feedback",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
