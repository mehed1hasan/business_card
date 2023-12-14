import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/core/initial_buinding/initial_binding.dart';
import 'package:shared_value/shared_value.dart';

import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      child: SharedValue.wrapApp(
        GetMaterialApp(
          title: "Application",
          initialBinding: InitBind(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData(useMaterial3: false),
        ),
      ),
    ),
  );
}
