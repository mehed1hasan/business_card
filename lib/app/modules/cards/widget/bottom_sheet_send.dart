import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_business_card/app/modules/cards/widget/tabbar_email.dart';
import 'package:new_business_card/app/modules/cards/widget/tabbar_text.dart';

sendBottomSheet(context){
  showModalBottomSheet(
    shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20).r,
          topRight: const Radius.circular(20).r,
        )
    ),
    isScrollControlled: true,
    constraints: BoxConstraints(
      maxHeight: 610.h,
    ),
    context: context,
    //transitionAnimationController: animationControllers,
    builder: (BuildContext context) {
      return DefaultTabController(
        animationDuration: const Duration(milliseconds: 300),
        length: 3,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          decoration: BoxDecoration(
            //color: Color(0xFF333333),
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              )
          ),
          child: Column(
            children: [
              //SizedBox(height: 20.h,),
              Container(
                height: 8.5.h,
                width: 56.w,
                decoration: BoxDecoration(
                  color: const Color(0xffBBBBBB),
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                  "Send your Business Card",
                  textAlign: TextAlign.start,
                  style:TextStyle(
                    color:const Color(0xFF333333),
                    fontSize:24.sp,
                    fontWeight:FontWeight.w700,
                  )
              ),
              SizedBox(height: 32.h,),
              AnimatedContainer(
                //height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(3.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color(0xffEEEEEE),
                    width: 1.r
                  ),
                  /// Container color
                  color: const Color(0xffFFFFFF),
                ),
                duration: const Duration(milliseconds: 500),
                child: TabBar(
                  indicator: BoxDecoration(
                    /// current tabbar color
                    color: const Color(0xff5B2EFF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  unselectedLabelColor: Color(0xff777777),
                  indicatorColor: Colors.red,
                  //isScrollable: true,
                  labelColor: const Color(0xffFFFFFF),
                  //dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      child:Text(
                          "QR Code",
                          textAlign: TextAlign.start,
                          style:TextStyle(
                            //color:const Color(0xFF777777),
                            fontSize:16.sp,
                            fontWeight:FontWeight.w400,
                          )
                      ),
                    ),
                    Tab(
                      child:Text(
                          "Email",
                          textAlign: TextAlign.start,
                          style:TextStyle(
                            //color:const Color(0xFF777777),
                            fontSize:16.sp,
                            fontWeight:FontWeight.w400,
                          )
                      ),
                    ),
                    Tab(
                      child:Text(
                          "Text",
                          textAlign: TextAlign.start,
                          style:TextStyle(
                            fontSize:16.sp,
                            fontWeight:FontWeight.w400,
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Content for Tab 1
                    Column(
                      children: [
                        Icon(
                          Icons.qr_code,
                          size: 300,
                          color: Colors.blue.shade600,
                        ),
                        const SizedBox(height: 20,),
                        Text(
                            "Point your camera at the QR code.",
                            textAlign: TextAlign.start,
                            style:TextStyle(
                              color: Color(0xff000000),
                              fontSize:18.sp,
                              fontWeight:FontWeight.w400,
                            )
                        ),
                        SizedBox(height: 30.h,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(375.w, 52.h),
                            backgroundColor: const Color(0xff5B2EFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0).r,
                            ),
                          ),
                          onPressed: () {

                          },
                          child: const Text("Sign-In"),
                        ),

                      ],
                    ),
                    // Content for Tab 2
                    const Center(child: EmailTabbar()),

                    // Content for Tab 3
                    const Center(child: TextTabbar()),
                  ],
                ),
              )
            ],
          )
        ),
      );
    },
  );
}
