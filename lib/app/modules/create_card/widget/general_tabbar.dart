import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/global_widget/inpurt_decoration.dart';
import '../controllers/create_card_controller.dart';

class GeneralTabbar extends StatelessWidget {
  GeneralTabbar(this.controller, {super.key});

  //final controller = controller();
  CreateCardController controller;


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        margin: EdgeInsets.only(left: 20.w, right: 20.w),
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Obx(() {
                return Form(
                  key: controller.cardCreateFormkey.value,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Card Name',
                          style: TextStyle(
                            color: const Color(0xff333333),
                            fontStyle: FontStyle.normal,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      /// /////////////////////////// Card Name ////////////////////////////////
                      SizedBox(height: 16.h,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Card Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h,),

                      /// First Name Box
                      SizedBox(
                        //height: 40.h,
                        width: double.infinity,

                        /// First Name
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controller.cardNameController.value,
                          decoration: buildInputDecoration(
                              Icons.mail, "Card Name"),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Card Name is required';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            controller.cardNameController.value.text = value;
                          },
                        ),
                      ),
                      SizedBox(height: 12.h,),

                      /// //////////////////////////// First Name ////////////////////////////////////////
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'First Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),

                      /// First Name Box
                      SizedBox(
                        //height: 40.h,
                        width: double.infinity,

                        /// First Name
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controller.firstNameController.value,
                          decoration: buildInputDecoration(
                              Icons.mail, "First Name"),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'First Name is required';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            controller.firstNameController.value.text = value;
                          },
                        ),
                      ),
                      SizedBox(height: 12.h,),

                      /// /////////////////////////// Last Name /////////////////////////////////////////
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Last Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: const Color(0xff333333),
                            fontStyle: FontStyle.normal,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),

                      /// First Name Box
                      SizedBox(
                        //height: 40.h,
                        width: double.infinity,

                        /// First Name
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controller.lastNameController.value,
                          decoration: buildInputDecoration(
                              Icons.mail, "Last Name"),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Last Name is required';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            //controller.fullNameController.value.text = value;
                            controller.lastNameController.value.text = value;
                          },
                        ),
                      ),
                      SizedBox(height: 12.h,),


                    ],
                  ),
                );
              }),

              /// /////////////////////////// Prefix /////////////////////////////////////////
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Prefix',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              /// Prefix Box
              SizedBox(
                //height: 40.h,
                width: double.infinity.h,

                /// Prefix Name
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.prefixController.value,
                  decoration: buildInputDecoration(Icons.mail, "Prefix"),
                  onChanged: (String value) {
                    //controller.fullNameController.value.text = value;
                    controller.prefixController.value.text = value;
                  },
                ),
              ),
              SizedBox(height: 16.h,),

              /// /////////////// Second Part ////////////////////////////////////
              /// /////////////// Affiliation ////////////////////////////////////
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Affiliation',
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              /// /////////////////////////// Tittle ////////////////////////////////
              SizedBox(height: 16.h,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tittle',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),

              /// Tittle Box
              SizedBox(
                //height: 40.h,
                width: double.infinity,

                /// Tittle
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.titleController.value,
                  decoration: buildInputDecoration(Icons.mail, "Tittle"),
                  onChanged: (String value) {
                    controller.titleController.value.text = value;
                  },
                ),
              ),
              SizedBox(height: 12.h,),

              /// //////////////////////////// Department ////////////////////////////////////////
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Department',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),

              /// Department Box ////////////
              SizedBox(
                //height: 40.h,
                width: double.infinity,

                /// Department
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.departmentController.value,
                  decoration: buildInputDecoration(Icons.mail, "Department"),
                  onChanged: (String value) {
                    controller.departmentController.value.text = value;
                  },
                ),
              ),
              SizedBox(height: 12.h,),

              /// /////////////////////////// Company /////////////////////////////////////////
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Company',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.h,),

              /// Company Name Box
              SizedBox(
                //height: 40.h,
                width: double.infinity.h,

                /// Company Name
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.companyNameController.value,
                  decoration: buildInputDecoration(Icons.mail, "Company"),
                  onChanged: (String value) {
                    controller.companyNameController.value.text = value;
                  },
                ),
              ),
              SizedBox(height: 12.h,),

              /// /////////////////////////// Headline /////////////////////////////////////////
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Headline',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff333333),
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8,),

              /// Headline  Box
              SizedBox(
                //height: 40.h,
                width: double.infinity.h,

                /// Headline Name
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: controller.headlineController.value,
                  decoration: buildInputDecoration(Icons.mail, "Headline"),
                  onChanged: (String value) {
                    controller.headlineController.value.text = value;
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}