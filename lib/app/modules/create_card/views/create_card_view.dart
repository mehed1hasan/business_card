import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:new_business_card/app/modules/cards/controllers/cards_controller.dart';
import 'package:new_business_card/app/modules/create_card/controllers/create_card_controller.dart';
import 'package:new_business_card/app/modules/create_card/widget/fields_tabbar.dart';
import 'package:new_business_card/app/modules/create_card/widget/general_tabbar.dart';

import '../../../utility/all_color_code.dart';
import '../widget/display_tabbar.dart';
import '../widget/preview.dart';

class CreateCardView extends GetView<CreateCardController> {
  CreateCardView({Key? key}) : super(key: key);

  /// final cardsController = CardsController();
  /// String cardType = Get.arguments;
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Obx(() {
      return Scaffold(
        resizeToAvoidBottomInset: false,
          backgroundColor: cF2F2FA,
          body: controller.isLoading.value ? const Center(
              child: CircularProgressIndicator()) :
          Container(
            margin: EdgeInsets.only(top: 60.h),
            //padding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 20.w, right: 20.w),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset(
                              'assets/cross icon.png',
                              height: 15.h,
                              width: 15.w,
                            )),
                        Text(
                          "Create Card",

                          /// //////////////////////////
                          style: TextStyle(
                            color: c333333,
                            fontStyle: FontStyle.normal,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        /// Save Button ////////////////////////////////////////////
                        Obx(() {
                          return TextButton(
                            onPressed: () {
                              print("*****Create Cars View: ${controller
                                  .cardCreateFormkey.value
                                  .currentState} *************");
                              if (controller.cardCreateFormkey.value
                                  .currentState!.validate()) {
                                controller.cardCreate();
                              } else {
                                Get.snackbar(
                                  'Error',
                                  'Card Name, Firstname, Lastname are required',
                                  snackPosition: SnackPosition.TOP,
                                  backgroundColor: Colors.red,
                                  colorText: Colors.white,
                                );
                              }
                              //Get.back();
                            },
                            child: Text(
                              'Save',
                              style: TextStyle(
                                color: HexColor(
                                    controller.themeColorList[controller
                                        .currentColorIndex.value]
                                        .toString()),
                                fontStyle: FontStyle.normal,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),

                  /// Preview Button ////////////////////////////////////////////////////////////
                  Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(375.w, 48.h),
                        backgroundColor: HexColor(
                            controller.themeColorList[controller
                                .currentColorIndex.value]
                                .toString()),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        //controller.isPreview.value = 1;
                        Get.to(Preview(controller: controller,));
                      },
                      child: Text("Preview",
                          style: TextStyle(
                            //color:const Color(0xFF777777),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h,),
                  SizedBox(
                    height: 610.h,
                    child: DefaultTabController(
                      animationDuration: const Duration(milliseconds: 300),
                      length: 3,
                      child: Column(
                        children: [
                          AnimatedContainer(
                            margin: EdgeInsets.only(left: 20.w, right: 20.w),
                            //height: 50,
                            width: double.infinity,
                            padding: EdgeInsets.all(3.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius
                                  .circular(5)
                                  .r,
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
                                //color: const Color(0xff5B2EFF),
                                color: HexColor(
                                    controller.themeColorList[controller
                                        .currentColorIndex.value]
                                        .toString()),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              unselectedLabelColor: Color(0xff777777),
                              indicatorColor: Colors.red,
                              //isScrollable: true,
                              labelColor: const Color(0xffFFFFFF),
                              // dividerColor: Colors.black,
                              // ignore: prefer_const_literals_to_create_immutables
                              tabs: [
                                Tab(
                                  child: Text(
                                      "General",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        //color:const Color(0xFF777777),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                      "Display",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        //color:const Color(0xFF777777),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                      "Fields",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.h,),
                          Expanded(
                            child: TabBarView(
                              children: [

                                /// General Tabbar  /////////////////////////////////////////////////////
                                Center(child: GeneralTabbar(controller)),
                                // Content for Tab 2
                                /// ///////// Content for Tab 2 ////////////////////////////////////////
                                Center(child: DisplayTabbar(controller)),

                                /// ///////// Content for Tab 3 ////////////////////////////////////////
                                Center(child: Fields()),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      );
    });
  }
}
