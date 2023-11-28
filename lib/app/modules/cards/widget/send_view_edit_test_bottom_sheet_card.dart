import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendViewEditTestCard extends StatelessWidget {

  SendViewEditTestCard({
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
          height: 141.h,
          width: 157.w,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F7),
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
                blurRadius: 2,
                spreadRadius: .1
              ),
              BoxShadow(
                  offset: const Offset(-.5, -.5),
                  color: Colors.grey.shade300,
                  blurRadius: .5,
                  spreadRadius: .1
              ),
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8.r),
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  ///Color//////////
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset(
                  iconPath.toString()
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                title.toString(),
                style: TextStyle(
                  color: const Color(0xFF333333),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                subTitle.toString(),
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: const Color(0xFF777777),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
