import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/modules/cards/widget/show_modal_bottom_sheet.dart';

import '../controllers/cards_controller.dart';

class CardsView extends GetView<CardsController> {
  const CardsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2FA),
      body: Column(
        children: [
          Stack(
            children: [
              /*Container(
                height: double.infinity,
                width: double.infinity,
                color: Color(0xffF2F2FA),
              ),*/
              SizedBox(
                height: 189.h,
                width: double.infinity,
                child: Image.asset(
                  'assets/bg card screen.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 194.h,
                width: double.infinity,
                margin: EdgeInsets.only(top:129.h, left: 20.w, right: 20.w),
                padding: EdgeInsets.only(top: 60.h, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(15.h),
                    border: Border.all(color: const Color(0xffDDDDDD), width: .5)
                ),
                child: Column(
                  children: [
                    //SizedBox(height: 60.h,),
                    Text(
                      'Nam Nai',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff333333),
                      ),
                    ),
                    Text(
                      'code kore khai',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff555555),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 79.h, left: 137.5.w, right: 137.5.w, bottom: 10.h),
                height: 100.h,
                width: 100.w,
                child: CircleAvatar(
                  radius: 50,
                  child: Image.asset(
                    'assets/fb icon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 24.h,),
          Expanded(
            child: GridView.builder(
              ///physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0
              ),
              itemBuilder: (BuildContext context, int index){
                return InkWell(
                  onTap: (){
                    showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 715.h,
                          child: ShowModalBottomSheet(),
                        );
                      },
                    );
                  },
                  child: Container(
                    //margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    padding: const EdgeInsets.all(10),
                    height: 172.h,
                    width: 157.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                         color: Colors.grey.shade300,
                          blurRadius: 3,
                        )
                      ]
                    ),
                    child: Icon(
                      Icons.image,
                      color: Colors.grey.shade400,
                      size: 150,
                    ),
                  ),
                );
              },
            )
          ),
        ],
      )
    );
  }
}


