import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDialogExportContact extends StatelessWidget {
  const AlertDialogExportContact({super.key});

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
            height: 270.h,
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
                      color: const Color(0xffECFDF3)
                  ),
                  child: Container(
                    height: 48.h,
                    width: 48.w,
                      padding: EdgeInsets.only(top: 8.h, bottom: 8.h, right: 8.w, left: 8.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48.r),
                        color: const Color(0xffD1FADF)
                    ),
                    child: Image.asset(
                      'assets/alert dialog icon/export contacts.png',
                    )
                  ),
                ),
                SizedBox(height: 16.h,),
                Text(
                  'Export Contacts',
                  style: TextStyle(
                    color: Color(0xff101828),
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 8.h,),
                Text(
                  'Contacts will be saved in you current contact list as named in the Cards.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff667085),
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
                  child: const Text("Export Contact"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
