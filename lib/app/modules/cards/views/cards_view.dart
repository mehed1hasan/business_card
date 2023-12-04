import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/cards_controller.dart';

class CardsView extends GetView<CardsController>  {
  const CardsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffF2F2FA),
      body: Column(
        children: [
          Stack(
            children: [
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
                    Text(
                      'Nam Nai',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff333333),
                      ),
                    ),
                    Text(
                      'code kore khai',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff555555),
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0.h,
                mainAxisSpacing: 20.0.h
              ),
              itemBuilder: (BuildContext context2, int index){
                return InkWell(
                  onTap: (){
                    controller.cardBottomSheet(context2);
                  },
                  child: Container(
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


