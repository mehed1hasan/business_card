import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/data/local/model/all_tips_model.dart';

import '../../../utility/all_color_code.dart';

class ShowAllTips extends StatelessWidget {
  ShowAllTips({super.key});
  final currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.r),
      height: 319.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r)
        )
      ),
      child: Column(
        children: [
          Container(
            height: 5.h,
            width: 56.w,
            decoration: BoxDecoration(
              color: cBBBBBB,
              borderRadius: BorderRadius.all(Radius.circular(4.r))
            ),
          ),
          SizedBox(height: 55.h,),
          Expanded(
            flex: 10,
            child: PageView.builder(
              itemCount: tipsList.length,
              itemBuilder: (context, index1){
                return Column(
                  children: [
                    SizedBox(height: 50.h,),
                    Text(tipsList[index1].headerText,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: c333333,
                        )),
                    SizedBox(height: 16.h,),
                    Expanded(
                      child: Text(tipsList[index1].bodyText,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: c777777,
                          ),textAlign: TextAlign.center,),
                    ),
                  ],
                );
              },
              onPageChanged: (index){
                currentIndex.value = index;
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.separated(
              itemCount: tipsList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index2) => Obx(() {
                return Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index2 ? c5B2EFF:cDDDDDD,
                    ),
                  ),
                );
              }),
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10.w,),
            ),
          ),
        ],
      ),
    );
  }
}
