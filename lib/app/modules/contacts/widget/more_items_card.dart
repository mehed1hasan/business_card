import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_business_card/app/modules/contacts/controllers/contacts_controller.dart';

class MoreItemsCard extends StatelessWidget {
  MoreItemsCard({
    super.key,
    this.currentIndex,
  });

  final currentIndex;        ///    current list Index
  final contactsController = ContactsController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top:21.h, left: 22.w,),
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              shape: BoxShape.circle,
              /* border: Border.all(
              width: 2.w,
              color: const Color(0xffECEDFF),
            ),*/
              image: DecorationImage(
                  image: NetworkImage(
                    contactsController.contactCardList[currentIndex].contacts![0].imagePath.toString(),
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:21.h, left: 54.w,),
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              shape: BoxShape.circle,
               border: Border.all(
              width: 2.w,
              color: const Color(0xffFFFFFF),
            ),
              image: DecorationImage(
                  image: NetworkImage(
                    contactsController.contactCardList[currentIndex].contacts![1].imagePath.toString(),
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:21.h, left: 84.w,),
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
          color: const Color(0xffE9F1FF),
          shape: BoxShape.circle,
           border: Border.all(
            width: 2.w,
            color: const Color(0xffFFFFFF),
           ),
          ),
          child: Center(
            child: Text(
              "${contactsController.contactCardList[currentIndex].contacts!.length-2}+",
                style: TextStyle(
                  color: const Color(0xff007BFE),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400
                ),
            ),
          ),
        ),
      ],
    );
  }
}
