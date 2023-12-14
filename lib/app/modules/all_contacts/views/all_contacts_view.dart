import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/all_contacts_controller.dart';
class AllContactsView extends GetView<AllContactsController> {
  const AllContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 48.h,
              ),
              /// App Bar Total contacts show  ///////////////////////////////////////////
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Back Icon
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25.sp,
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Text(
                    "All Contacts",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff333333),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  /// Total Contacts Count Show ////////////////
                  Text("(${controller.showAllContactsList!.length.toString()})",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffAAAAAA),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h,),
              /// ///////////  Search Bar ///////////////////////////////////////////////
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
                  /// //////////////////  Add Icon Container   /////////////////
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


              /// /////////////  Contacts List in body part  ////////////////////////////////
              Container(
                height: 560.h,
                //padding: EdgeInsets.only(left: 16.w, right: 16.w,),
                margin: EdgeInsets.only(left: 20.w, right: 20.w,),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AzListView(
                  indexBarMargin: const EdgeInsets.all(0),
                  indexHintBuilder: (context, tag){
                    return Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: Text(
                        tag,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 25
                        ),
                      ),
                    );
                  },
                  indexBarOptions: const IndexBarOptions(
                      indexHintAlignment: Alignment.centerRight,
                      needRebuild: true,
                      selectTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                      selectItemDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                      )
                  ),
                  /// List ..........
                  data: controller.showAllContactsList!,
                  /// Total contact length .........
                  itemCount: controller.showAllContactsList!.length,
                  /// Show Info .......
                  itemBuilder: (context,index){
                    final item = controller.showAllContactsList![index];
                    return ListTile(
                      leading: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                  item.imagePath.toString(),
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      title: Text(item.name.toString()),
                      subtitle: Text(item.designation.toString()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}