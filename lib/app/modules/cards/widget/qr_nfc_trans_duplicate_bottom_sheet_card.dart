import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrNfcTransDuplicateCard extends StatelessWidget {

  QrNfcTransDuplicateCard({
    super.key,
    required this.iconPath,
    required this.iconBgColor,
    required this.title,
    required this.subTitle,
  });

  String? iconPath;
  Color? iconBgColor;
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.h, right: 10.h),
          height: 60.h,
          width: 144.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            //color: Colors.red,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8.r),
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  /// Bg Color//////////
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                /// Icon Show
                child: Image.asset(
                    iconPath.toString()
                ),
              ),
              Text(
                title.toString(),
                style: TextStyle(
                  color: const Color(0xFF333333),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
