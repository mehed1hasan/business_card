import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountDetailsCard extends StatelessWidget {
  AccountDetailsCard({
    super.key,
    this.iconPath,
    this.title,
    this.subTitle,
  });

  String? iconPath;
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(title!='Card Transfer List')...[
          Divider(
            height: .5,
            thickness: 1.r,
          ),
        ],
        ListTile(
          leading: Container(
            padding: EdgeInsets.only(top: 13.h, bottom: 13.h, left: 11.5.w, right: 11.5.w),
            decoration: BoxDecoration(
              color: const Color(0xffEEECFA),
              borderRadius: BorderRadius.circular(23).r,
            ),
            child: SizedBox(
              height: 19.h,
              width: 22.w,
              child: Image.asset(
                iconPath!,
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            title!,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: const Color(0xff333333),
            ),
          ),
          subtitle: Text(
            subTitle!,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: const Color(0xff555555),
            ),
          ),
        ),
      ],
    );
  }
}