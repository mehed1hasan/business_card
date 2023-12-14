import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_business_card/app/modules/contacts/controllers/contacts_controller.dart';

class TowItemsCard extends StatelessWidget {
  TowItemsCard({
    super.key,
    this.currentIndex,
  });

  final currentIndex;        ///    current list Index
  final contactsController = ContactsController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
                    contactsController.contactCardList[currentIndex].contacts![1].imagePath.toString(),
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),
      ],
    );
  }
}
