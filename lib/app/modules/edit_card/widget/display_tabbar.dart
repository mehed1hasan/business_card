import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:new_business_card/app/modules/edit_card/controllers/edit_card_controller.dart';
import 'package:new_business_card/app/utility/all_color_code.dart';
import '../../../data/local/model/card_design_model.dart';

String imageBase = "https://tnbusinesscard.s3.ap-southeast-1.amazonaws.com/";

class EditDisplayTabbar extends StatelessWidget {
  EditDisplayTabbar(this.controller, {super.key});

  EditCardController controller;

  int colorChange = 0;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15).r,
              height: 200.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Design',
                      style: TextStyle(
                        color: const Color(0xff333333),
                        fontStyle: FontStyle.normal,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: designList.length,
                      itemBuilder: (context, index) {
                        final item = designList[index];
                        return Obx(() {
                          return GestureDetector(
                            onTap: () {
                              controller.currentDesignIndex.value = index;
                              controller.cardStyleId.value = index+1;
                            },
                            child: Container(
                              padding: EdgeInsets.all(3.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  width: 2,
                                    color: controller.currentDesignIndex
                                        .value == index ?
                                    HexColor(controller
                                        .themeColorList[controller
                                        .currentColorIndex.value]
                                        .toString()) :
                                    Colors.white
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 85.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                        color: HexColor(
                                            controller.themeColorList[controller
                                                .currentColorIndex.value]
                                                .toString()),
                                        border: Border.all(
                                          color: HexColor(
                                            controller.themeColorList[controller
                                                  .currentColorIndex.value]
                                                  .toString()),
                                        ),
                                        borderRadius: BorderRadius
                                            .circular(10)
                                            .r,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              item.designImage,
                                            )
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 8.h,),
                                  Text(
                                    item.designName,
                                    style: TextStyle(
                                      color: c555555,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 8.w,);
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8.h,),

            /// ////////////////////// Edit Color Option /////////////////////////////
            ///  ////////////////////////////////////////////////////////////////////
            Container(
              padding: const EdgeInsets.all(20).r,
              height: 116.h,
              color: Colors.white,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Color',
                      style: TextStyle(
                        color: const Color(0xff333333),
                        fontStyle: FontStyle.normal,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.cardInitialDataList.value.data!
                          .cardThemeColors!.length,
                      itemBuilder: (context, index) {
                        return Obx(() {
                          return GestureDetector(
                            onTap: () {
                              controller.currentColorIndex.value = index;
                              controller.cardThemeColorId.value = controller.themeColorIdList[index];
                             /* print("***********Color Id: ${controller
                                  .cardThemeColorId.value}********");*/
                            },
                            child: Container(
                              margin: const EdgeInsets.all(2).r,
                              padding: const EdgeInsets.all(3).r,
                              height: 45.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: controller.currentColorIndex.value == index ?
                                      HexColor(controller.themeColorList[index]
                                          .toString()) : Colors.white
                                  )
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor(
                                      controller.themeColorList[index]
                                          .toString()),
                                ),
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8.h,),

            /// ////////////////////// Profile Photo /////////////////////////////
            /// ////////////////////////// //////////////////////////////////////
            Container(
              padding: const EdgeInsets.all(20).r,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Profile Photo',
                      style: TextStyle(
                        color: const Color(0xff333333),
                        fontStyle: FontStyle.normal,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h,),

                  /// Show Bottom Sheet /////////////////////////////
                  GestureDetector(
                    onTap: () => controller.ontapImagePick(),
                    child: controller.imagePathFromApi.isEmpty ?
                    Container(
                      padding: const EdgeInsets.all(15).r,
                      decoration: BoxDecoration(
                          color: cF2F2F7,
                          borderRadius: BorderRadius
                              .circular(10)
                              .r
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_photo_alternate_rounded,
                            color: c777777,
                            size: 34.sp,
                          ),
                          SizedBox(width: 8.w,),
                          Text(
                            'Add Profile Picture',
                            style: TextStyle(
                              color: c777777,
                              fontStyle: FontStyle.normal,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8.w,),
                          Icon(
                            Icons.add,
                            color: c777777,
                            size: 25.sp,
                          )
                        ],
                      ),
                    ):controller.imagePath.isNotEmpty?
                    SizedBox(
                      height: 120.h,
                      width: 100.w,
                      child: Image.file(File(controller.imagePath
                          .toString(), ), fit: BoxFit.cover,),
                    ):
                    SizedBox(
                      height: 120.h,
                      width: 100.w,
                      child: CachedNetworkImage(
                        imageUrl: "$imageBase${controller.imagePathFromApi
                            .toString()}",
                        fit: BoxFit.cover,
                      ),
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h,),

            /// ////////////////////// Logo Add Option //////////////////////////
            /// /////////////////////////////////////////////////////////////////
            GestureDetector(
              onTap: () {

              },
              child: Container(
                padding: const EdgeInsets.all(20).r,
                //height: 145.h,
                color: Colors.white,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Logo',
                        style: TextStyle(
                          color: const Color(0xff333333),
                          fontStyle: FontStyle.normal,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    Container(
                      padding: const EdgeInsets.all(15).r,
                      //height: 71.h,
                      decoration: BoxDecoration(
                          color: cF2F2F7,
                          borderRadius: BorderRadius
                              .circular(10)
                              .r
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_photo_alternate_rounded,
                            color: c777777,
                            size: 34.sp,
                          ),
                          SizedBox(width: 8.w,),
                          Text(
                            'Add Logo Here',
                            style: TextStyle(
                              color: c777777,
                              fontStyle: FontStyle.normal,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8.w,),
                          Icon(
                            Icons.add,
                            color: c777777,
                            size: 25.sp,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}