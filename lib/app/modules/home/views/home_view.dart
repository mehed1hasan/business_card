
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  ///int currentScreenIndex = 0.obs as int;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: Obx(() {
        return Container(
            child: controller.screen[controller.currentScreenIndex.value],);
      },),
      bottomNavigationBar: SizedBox(
        height: 100.h,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: controller.currentScreenIndex.value,
          selectedItemColor: const Color(0xff5B2EFF),
          unselectedItemColor: const Color(0xFFBBBBBB),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedLabelStyle:
          const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          selectedLabelStyle:
          const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          onTap: (index) {
            if (kDebugMode) {
              print(
              controller.currentScreenIndex.value,
            );
            }
            controller.currentScreenIndex.value = index;
          },
          items: [

            /// Cards
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24,
                width: 24,
                'assets/Cards.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28,
                width: 28,
                'assets/Cards.png',
                color: const Color(0xff5B2EFF),
                fit: BoxFit.cover,
              ),
              label: "Cards",
              backgroundColor: const Color(0xffffffff),
            ),

            /// Scan
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24,
                width: 24,
                'assets/Scan.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28,
                width: 28,
                'assets/Scan.png',
                color: const Color(0xff5B2EFF),
                fit: BoxFit.cover,
              ),
              label: "Scan",
              backgroundColor: const Color(0xffffffff),
            ),

            /// Contacts
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24,
                width: 24,
                'assets/Contacts.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28,
                width: 28,
                'assets/Contacts.png',
                color: const Color(0xff5B2EFF),
                fit: BoxFit.cover,
              ),
              label: "Contacts",
              backgroundColor: const Color(0xffffffff),
            ),

            /// Settings
            BottomNavigationBarItem(
              icon: Image.asset(
                height: 24,
                width: 24,
                'assets/Settings.png',
                fit: BoxFit.cover,
              ),
              activeIcon: Image.asset(
                height: 28,
                width: 28,
                'assets/Settings.png',
                color: const Color(0xff5B2EFF),
                fit: BoxFit.cover,
              ),
              label: "Setting",
              backgroundColor: const Color(0xffffffff),
            ),
          ],
        ),
      ),
    );
  }
}
