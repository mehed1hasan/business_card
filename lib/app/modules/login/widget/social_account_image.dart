import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountImage extends StatelessWidget {
  AccountImage (this.image,this.bgColor,{super.key});

  String image;
  Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 52.h,
      width: 52.w,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        //color: CupertinoColors.activeBlue,
        color: bgColor,
        borderRadius: BorderRadius.circular(7),
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Color(0xffAAAAAA)
          )
        ]
      ),
      child: Image.asset(
        image,
        /*height: 10.h,
        width: 10.w,*/
        //fit: BoxFit.cover,
      ),
    );
  }
}
