import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_business_card/app/modules/cards/widget/qr_nfc_trans_duplicate_bottom_sheet_card.dart';
import 'package:new_business_card/app/modules/cards/widget/send_view_edit_test_bottom_sheet_card.dart';
import 'package:new_business_card/app/modules/model/bottom_sheet_card2.dart';

import '../../model/bottom_sheet_card1.dart';

class ShowModalBottomSheet extends StatelessWidget {
  ShowModalBottomSheet({super.key});

  List<BottomSheetCard1> bottomSheetCardList1 = [

    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/send icon.png',
      iconBgColor: Color(0x1A753ACF),
      title: "Send",
      subTitle: "Share via QR, email, text and more.",
    ),
    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/view icon.png',
      iconBgColor: Color(0x1AF58523),
      title: "View",
      subTitle: "Open your card in Business card",
    ),
    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/edit icon.png',
      iconBgColor: Color(0x1A008B71),
      title: "Edit",
      subTitle: "Share via QR, email, text and more.",
    ),
    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/test icon.png',
      iconBgColor: Color(0x1A008B71),
      title: "Test",
      subTitle: "Open your card in Business card",
    ),

  ];

  List<BottomSheetCard2> bottomSheetCardList2 = [

    BottomSheetCard2(
      iconPath: 'assets/cards screen bottom sheet icon/send icon.png',
      iconBgColor: Color(0x1A753ACF),
      title: "QR",
      subTitle: "Share via QR, email, text and more.",
    ),
    BottomSheetCard2(
      iconPath: 'assets/cards screen bottom sheet icon/view icon.png',
      iconBgColor: Color(0x1AF58523),
      title: "NFC",
      subTitle: "Open your card in Business card",
    ),
    BottomSheetCard2(
      iconPath: 'assets/cards screen bottom sheet icon/edit icon.png',
      iconBgColor: Color(0x1A008B71),
      title: "Edit",
      subTitle: "Share via QR, email, text and more.",
    ),
    BottomSheetCard2(
      iconPath: 'assets/cards screen bottom sheet icon/test icon.png',
      iconBgColor: Color(0x1A008B71),
      title: "Test",
      subTitle: "Open your card in Business card",
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Upper Part ////////////////////////////////////////
        Container(
          height: 30.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            //color: Color(0xFF333333),
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
          ),
          child: Center(
            child: Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0x4DEBEBF5),
                borderRadius: BorderRadius.circular(5)
              ),
            )
          ),
        ),
        /// Lower Part /////////////////////////////////////////////////////////
        /// First List View (Send , View, Edit, Test)
        Container(
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h, left: 20.w, right: 20.w),
          height: 450.h,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Work",
                  textAlign: TextAlign.start,
                  style:TextStyle(
                    color:const Color(0xFF333333),
                    fontSize:28.sp,
                    fontWeight:FontWeight.w700,
                  )
              ),
              SizedBox(height: 8.h,),
              Expanded(
                child: GridView.builder(
                  ///physics: NeverScrollableScrollPhysics(),
                  //padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0.w,
                      mainAxisSpacing: 20.0.h
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(
                      onTap: (){

                      },
                      child: SendViewEditTestCard(
                        iconPath: bottomSheetCardList1[index].iconPath,
                        iconBgColor: bottomSheetCardList1[index].iconBgColor,
                        title: bottomSheetCardList1[index].title,
                        subTitle: bottomSheetCardList1[index].subTitle
                      )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        /// Second List View (QR, TFC, Transfer, Duplicate)
        Container(
          padding: EdgeInsets.only(top:20.h, left: 20.w, right: 20.w),
          margin: EdgeInsets.only(left: 20.w, right: 20.w),
          height: 200.h,
          width: double.infinity,
          //color: const Color(0xffF2F2F7),
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F7),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: GridView.builder(
            ///physics: NeverScrollableScrollPhysics(),
            //padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            //physics: ScrollPhysics(),

            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
               childAspectRatio: 2.3

            ),
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                  onTap: (){

                  },
                  child: QrNfcTransDuplicateCard(
                      iconPath: bottomSheetCardList2[index].iconPath,
                      iconBgColor: bottomSheetCardList2[index].iconBgColor,
                      title: bottomSheetCardList2[index].title,
                      subTitle: bottomSheetCardList2[index].subTitle
                  )
              );
            },
          ),
        )
      ],
    );
  }
}



