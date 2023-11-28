import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_business_card/app/modules/cards/widget/qr_nfc_trans_duplicate_bottom_sheet_card.dart';
import 'package:new_business_card/app/modules/cards/widget/send_view_edit_test_bottom_sheet_card.dart';
import 'package:new_business_card/app/modules/cards/widget/setting_delete_botom_sheet_card.dart';
import '../../model/bottom_sheet_card_model.dart';

class ShowModalBottomSheet extends StatelessWidget {
  ShowModalBottomSheet({super.key});

  List<BottomSheetCard1> bottomSheetCardList1 = [

    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/send icon.png',
      iconBgColor: const Color(0x1A753ACF),
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

  List<BottomSheetCard1> bottomSheetCardList2 = [

    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/qr icon.png',
      iconBgColor: Color(0x1A007BFE),
      title: "Download QR",
      subTitle: "Share via QR, email, text and more.",
    ),
    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/nfc icon.png',
      iconBgColor: Color(0x1AF58523),
      title: "Write to NFC",
      subTitle: "Open your card in Business card",
    ),
    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/transfer icon.png',
      iconBgColor: Color(0x1AFF3B30),
      title: "Transfer",
      subTitle: "Share via QR, email, text and more.",
    ),
    BottomSheetCard1(
      iconPath: 'assets/cards screen bottom sheet icon/duplicate icon.png',
      iconBgColor: Color(0x1A5856D6),
      title: "Duplicate",
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
          height: 380.h,
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
                      mainAxisSpacing: 20.0.h,
                      childAspectRatio: 1.19.h,
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
          color: const Color(0xFFFDFDFD),

          child: Container(
            padding: EdgeInsets.only(top:20.h, left: 20.w, right: 20.w),
            margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20),
            height: 280.h,
            width: double.infinity,
            //color: const Color(0xffF2F2F7),
            decoration: BoxDecoration(
              color: const Color(0xFFF2F2F7),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    ///physics: NeverScrollableScrollPhysics(),
                    //padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                    //physics: ScrollPhysics(),

                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 15.0,
                       childAspectRatio: 1.78

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
                ),
                Row(
                  children: [
                    SettingDeleteBottomSheetCard(
                      iconPath:"assets/cards screen bottom sheet icon/setting icon.png",
                      title: "Settings",
                    ),
                    const SizedBox(width: 15,),
                    SettingDeleteBottomSheetCard(
                      iconPath:"assets/cards screen bottom sheet icon/delete icon.png",
                      title: "Delete",
                    ),
                  ],

                )

              ],
            ),
          ),
        ),

      ],
    );
  }
}



