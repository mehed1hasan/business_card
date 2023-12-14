import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:new_business_card/app/routes/app_pages.dart';
import '../../../core/global_widget/card_theme.dart';
import '../../../core/global_widget/shared_value.dart';
import '../../../utility/all_color_code.dart';
import '../controllers/cards_controller.dart';

String imageBase = "https://tnbusinesscard.s3.ap-southeast-1.amazonaws.com/";

///image base path
class CardsView extends GetView<CardsController> {
  const CardsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CardsController());
    return Obx(() {
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
                    margin: EdgeInsets.only(
                        top: 129.h, left: 20.w, right: 20.w),
                    padding: EdgeInsets.only(top: 60.h, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(15.h),
                        border: Border.all(
                            color: const Color(0xffDDDDDD), width: .5)
                    ),
                    child: Column(
                      children: [
                        Text(
                          name.$,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff333333),
                          ),
                        ),
                        Text(
                          email.$,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff555555),
                          ),
                        ),
                        SizedBox(height: 24.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 37.h,
                              width: 72.w,
                              decoration: BoxDecoration(
                                color: const Color(0xffF3F2FE),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: c5B2EFF,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(width: 18.w,),
                            Container(
                              height: 37.h,
                              width: 96.w,
                              decoration: BoxDecoration(
                                color: const Color(0xffF3F2FE),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Preview",
                                  style: TextStyle(
                                      color: c5B2EFF,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(width: 18.w,),
                            /// Create New Card
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.CREATE_CARD,
                                    arguments: controller);
                              },
                              child: Container(
                                height: 37.h,
                                width: 72.w,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF3F2FE),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "Create",
                                    style: TextStyle(
                                        color: c5B2EFF,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(width: 18.w,),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 79.h, left: 137.5.w, right: 137.5.w, bottom: 10.h),
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
              controller.isLoading.isFalse ? const Center(
                child: CircularProgressIndicator(),) :
              Expanded(
                  child: GridView.builder(
                    ///physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h),
                    itemCount: controller.userCardList.value.data!.model!
                        .length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.0.h,
                        mainAxisSpacing: 20.0.h
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          controller.currentCardId.value = controller.userCardList.value.data!.model![index].id!.toInt();
                          controller.currentCardIndex.value = index;
                          controller.cardBottomSheet(context);
                        },
                        child: Container(
                          height: 172.h,
                          width: 157.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1,1),
                                  color: Colors.grey.shade600,
                                  blurRadius: 3,
                                )
                              ],
                              /// Background Image ///
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                  '$imageBase${controller.userCardList.value
                                      .data!.model![index].display!.profileImageUrl}',
                                ),
                                fit: BoxFit.cover,
                              )
                          ),
                          child: ClipPath(
                            clipper: controller.clipPath(controller.userCardList.value
                                .data!.model![index].display!.cardStyle!.id!.toInt()),
                            child: Container(
                                height: 157.h,
                                width: 157.w,
                                decoration: BoxDecoration(
                                  //color: Colors.blue.shade900,
                                  color: HexColor(
                                      controller.userCardList.value.data!.model![index].display!.cardThemeColor!.primaryColor.toString()
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 10.h,
                                      left: 10.w,
                                      child: Text(
                                        controller.userCardList.value.data!.model![index].general!.cardName.toString(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.sp
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ),
                      );
                    },
                  )
              ),
            ],
          )
      );
    });
  }
}




/*CachedNetworkImage(
                              imageUrl: "${controller.userCardList.value.data?.model?[index].cardUrl}",
                               placeholder: (context, url) => Icon(
                                 Icons.image,
                                 color: Colors.grey.shade400,
                                 size: 150,
                               ),
                              ),*/
/// //////////////////////////////////////////////////////////////////////
/*CachedNetworkImage(
                            imageUrl: designList[controller.userCardList.value
          .data!.model![index].display!.cardStyle!.id!.toInt()].designImage,
                            errorWidget: (context, url, error) =>
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.grey.shade400,
                                  size: 150,
                                ),
                            placeholder: (context, url) =>
                                Icon(
                                  Icons.image,
                                  color: Colors.grey.shade400,
                                  size: 150,
                                ),
                          ),*/

/*                    Container(
                          //padding: const EdgeInsets.all(10),
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
                            ],
                            /// Background Image ///
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  '$imageBase${controller.userCardList.value
                                      .data!.model![index].display!.profileImageUrl}',
                              ),
                              fit: BoxFit.cover,
                            )
                          ),
                          child: controller.userCardList.value
                              .data!.model![index].display!.cardStyle!.id!.toInt().isInfinite?
                          const Icon(Icons.image_outlined):
                          Container(
                            margin: EdgeInsets.only(bottom: 0.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(designList[controller.userCardList.value
                                .data!.model![index].display!.cardStyle!.id!.toInt()-1].designImage,
                              color: Colors.blue.shade800,

  */



/*
ClipPath(
                            clipper: controller.userCardList.value
                                .data!.model![index].display!.cardStyle!.id!.toInt()==1?Wave():
                            controller.userCardList.value
                                .data!.model![index].display!.cardStyle!.id!.toInt()==2?Modern():Sleek(),
                            child: Container(
                              height: 157.h,
                              width: 157.w,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              color: HexColor(
                                  controller.themeColorList[controller.currentColorIndex.value].toString()
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Text(
                                      'Card',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    ),
                                    bottom: 0,
                                    left: 10,
                                  ),
                                ],
                              )
                            ),
                          ),
*/

