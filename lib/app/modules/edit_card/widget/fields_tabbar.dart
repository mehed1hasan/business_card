import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_business_card/app/utility/all_color_code.dart';

class EditFields extends StatelessWidget {
  const EditFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20).r,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
                "Social Links",
                style:TextStyle(
                  color: c333333,
                  fontSize:28.sp,
                  fontWeight:FontWeight.w700,
                )
            ),
          ),
          SizedBox(height: 22.h,),
          SizedBox(
            height: 48.h,
            //width: 279.w,
            child: TextFormField(
              ///controller: controller.searchController.value,
              decoration: InputDecoration(
                hintText: "Search names, companies, ",
                // isCollapsed: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff999999),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff999999),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}