import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/modules/account_details/widget/account_details_card.dart';
import 'package:new_business_card/app/modules/account_details/widget/alert_dialog_card_transfer.dart';
import 'package:new_business_card/app/modules/account_details/widget/alert_dialog_change_email.dart';
import 'package:new_business_card/app/modules/account_details/widget/alert_dialog_change_password.dart';
import 'package:new_business_card/app/modules/account_details/widget/alert_dialog_export_contact.dart';
import '../controllers/account_details_controller.dart';
import '../widget/alert_dialog_delete_account.dart';

class AccountDetailsView extends GetView<AccountDetailsController> {
  AccountDetailsView({Key? key}) : super(key: key);
  List<AccountDetailsList> accountDetailsList = [

    AccountDetailsList(
      iconPath: 'assets/account details icon/card transfer.png',
      title: 'Card Transfer List',
      subTitle: 'Transfer your Card',
    ),
    AccountDetailsList(
      iconPath: 'assets/account details icon/export contacts.png',
      title: 'Export Contact',
      subTitle: 'Export your Contacts',
    ),
    AccountDetailsList(
      iconPath: 'assets/account details icon/change email.png',
      title: 'Change Email',
      subTitle: 'Change your Email',
    ),
    AccountDetailsList(
      iconPath: 'assets/account details icon/change password.png',
      title: 'Change Password',
      subTitle: 'Change your Password',
    ),
    AccountDetailsList(
      iconPath: 'assets/account details icon/update profile.png',
      title: 'Update Profile',
      subTitle: 'Update your Profile',
    ),
    AccountDetailsList(
      iconPath: 'assets/account details icon/delete account.png',
      title: 'Delete Account',
      subTitle: 'Delete your Profile',
    ),
    /*AccountDetailsList(
      iconPath: 'assets/account details icon/logout.png',
      title: 'Logout',
      subTitle: 'Logout your Account',
    ),*/
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2FA),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 130.h,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/bg card screen.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  /// Cards and Contacts
                  Container(
                    height: 201.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(top:105.h, left: 20.w, right: 20.w),
                    padding: EdgeInsets.only(top: 60.h, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(15.h),
                        border: Border.all(color: const Color(0xffDDDDDD), width: .5)
                    ),
                    child: Column(
                      children: [
                        //SizedBox(height: 60.h,),
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
                        SizedBox(height: 20.h,),
                        Container(
                          height: 54.h,
                          width: 253,
                          padding: EdgeInsets.only(top: 6.h, bottom: 6.h),
                          decoration: BoxDecoration(
                            color: const Color(0xffEEECFA),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /// Show how many Cards create
                              const Column(
                                children: [
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      color: Color(0xff272C2F),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Cards',
                                    style: TextStyle(
                                      color: Color(0xff272C2F),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 22.w,),
                              Container(
                                height: 20.h,
                                width: 1.w,
                                color: const Color(0xffD8D8D8),
                              ),
                              SizedBox(width: 22.w,),
                              /// Show how many Contacts create
                              const Column(
                                children: [
                                  Text(
                                    '9',
                                    style: TextStyle(
                                      color: Color(0xff272C2F),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Contacts',
                                    style: TextStyle(
                                      color: Color(0xff272C2F),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  /// Profile Picture
                  Container(
                    margin: EdgeInsets.only(top: 55.h, left: 137.5.w, right: 137.5.w, bottom: 10.h),
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
              Container(
                // height: 420.h,
                //padding: EdgeInsets.only(left: 16.w, right: 16.w,),
                margin: EdgeInsets.only(left: 20.w, right: 20.w,),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: accountDetailsList.length,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      onTap: (){
                        /// Alert Dialog Box call here ///////////////////////////
                        if(index==0){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialogCardTransfer();
                              }
                          );
                        }if(index==1){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialogExportContact();
                              }
                          );
                        }if(index==2){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialogChangeEmail();
                              }
                          );
                        }if(index==3){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialogChangePassword();
                              }
                          );
                        }if(index==5){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialogDeleteAccount(controller: controller,);
                              }
                          );
                        }
                      },
                      child: AccountDetailsCard(
                        iconPath: accountDetailsList[index].iconPath,
                        title: accountDetailsList[index].title,
                        subTitle: accountDetailsList[index].subTitle,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}
class AccountDetailsList{
  String? iconPath;
  String? title;
  String? subTitle;
  AccountDetailsList({
    this.iconPath,
    this.title,
    this.subTitle
});
}