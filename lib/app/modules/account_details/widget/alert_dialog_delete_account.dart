import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDialogDeleteAccount extends StatelessWidget {
  const AlertDialogDeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      content: Builder(
        builder: (context) {
          return Container(
            height: 350.h,
            width: 335.w,
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h, left: 16.w, right: 16.w),
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10.r)
            ),
            child: Column(
              children: [
                /// Upper Icon Container //////////////////////
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48.r),
                      color: const Color(0xffFEF3F2)
                  ),
                  child: Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48.r),
                        color: const Color(0xffFEE4E2)
                    ),
                    child: const Icon(Icons.highlight_remove_outlined, color: Color(0xffD92D20),),
                  ),
                ),
                SizedBox(height: 16.h,),
                Text(
                  'Delete Account',
                  style: TextStyle(
                    color: Color(0xff101828),
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 8.h,),
                Text(
                  'Are you sure you want to delete this account? This action cannot be undone.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff667085),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 24.h,),
                /// Export Contact Button ////////////////////////////
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(303.w, 52.h),
                    backgroundColor: const Color(0xff5B2EFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius
                          .circular(5.0).r,
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Text("Delete Account"),
                ),
                SizedBox(height: 8.h,),
                /// Delete Cancel Button ////////////////////////////
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(303.w, 52.h),
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

                  },
                  child:Text(
                    "Cancel",
                    style: TextStyle(
                      color:const Color(0xff5B2EFF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
