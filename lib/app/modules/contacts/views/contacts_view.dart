import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/routes/app_pages.dart';

import '../controllers/contacts_controller.dart';
import '../widget/more_items_card.dart';
import '../widget/two_items_card.dart';

class ContactsView extends GetView<ContactsController> {
  const ContactsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ContactsController());
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 48.h,
              ),
              /// App Bar Total contacts show  ///////////////////////////////////////////
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff333333),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  /// Total Contacts Count Show ///////
                  const Text("(66)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffAAAAAA),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h,),
              /// Search Bar /////////////////////////////////////////////////////////
              Row(
                children: [
                  SizedBox(
                    height: 48.h,
                    width: 279.w,
                    child: TextFormField(
                      controller: controller.searchController.value,
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
                  SizedBox(width: 8.w,),
                  /// Add Icon Container   /////////////////
                  Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xff999999),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.h,),
              /// Contact GridView Card ///////////////////////////////////
              GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controller.contactCardList.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.81.r,
                  crossAxisSpacing: 20.r,
                  mainAxisSpacing: 20.r,
                ),
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      ///     Show Al Contacts  //////////////////////////////////
                      Get.toNamed(Routes.ALL_CONTACTS);
                    },
                    //overlayColor: MaterialStatePropertyAll(Colors.pink),
                    borderRadius: BorderRadius.circular(10.r),
                    radius: 100.r,
                    child: Container(
                      padding: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Stack(
                        children: [
                          /// Type of Contacts Text Container  /////////////////
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffECEDFF),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            margin: const EdgeInsets.only(top: 117).r,
                            height: 72.h,
                            width: 150.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  controller.contactCardList[index].title.toString(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                  "${controller.contactCardList[index].contacts!.length.toString()} Contacts",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          /// Contacts image list widget call ////////////////////////////////
                          if(controller.contactCardList[index].contacts!.length > 2)...{
                            Container(
                              // margin: EdgeInsets.only(top:21.h, left: 22.w,),
                              child: MoreItemsCard(currentIndex: index,),
                            ),
                          }else...{
                            Container(
                              margin: EdgeInsets.only(top:21.h, left: 26.w,),
                              child: TowItemsCard(currentIndex: index,),
                            ),
                          },

                          /// Circle Icon Container   //////////////////////////
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1.w,
                                color: const Color(0xffECEDFF),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 90.h, left: 58.w, right: 58.w, bottom: 50.h),
                            padding: const EdgeInsets.all(6).r,
                            height: 40.h,
                            width: 40.w,
                            child: Image.asset(
                              controller.contactCardList[index].iconPath.toString()
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              )
            ],
          ),
        ),
      )
    );
  }
}
