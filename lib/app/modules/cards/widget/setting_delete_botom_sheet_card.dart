import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingDeleteBottomSheetCard extends StatelessWidget {

  SettingDeleteBottomSheetCard({
    super.key,
    required this.iconPath,
    required this.title,
  });

  String? iconPath;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.h, right: 10.h),
          height: 45.h,
          width: 140.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            //color: Colors.red,
            borderRadius: BorderRadius.circular(5.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(1, 1),
                    color: Colors.grey.shade300,
                    blurRadius: 3,
                    spreadRadius: .5
                ),
              ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: Image.asset(
                  iconPath.toString(),
                  color: const Color(0xFF555555),
                ),
              ),
              Text(
                title.toString(),
                style: TextStyle(
                    color: const Color(0xFF555555),
                    fontSize: 16.sp,
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
