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
          height: 80.h,
          width: 144.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            //color: Colors.red,
            borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(1, 1),
                    color: Colors.grey.shade300,
                    blurRadius: 3,
                    spreadRadius: .5
                ),
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8.r),
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  /// Bg Color//////////
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(8.r),
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
