import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_business_card/app/modules/cards/views/cards_view.dart';
import 'package:new_business_card/app/modules/contacts/views/contacts_view.dart';
import 'package:new_business_card/app/modules/scan/views/scan_view.dart';
import 'package:new_business_card/app/modules/settings/views/settings_view.dart';

import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  ///int currentScreeenIndex = 0.obs as int;
  List<Widget> Screen = <Widget>[
    const CardsView(),
    const ScanView(),
    const ContactsView(),
    const SettingsView(),
  ].obs;


  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Obx(() {
      return Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: Screen[controller.currentScreeenIndex.value],
        bottomNavigationBar: SizedBox(
          height: 100.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: controller.currentScreeenIndex.value,
            selectedItemColor: const Color(0xff5B2EFF),
            unselectedItemColor: const Color(0xFFBBBBBB),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedLabelStyle:
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            selectedLabelStyle:
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            onTap: (index) {
              controller.currentScreeenIndex.value = index;
            },
            items: [

              /// home
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
                  color: Color(0xff5B2EFF),
                  fit: BoxFit.cover,
                ),
                label: "Cards",
                backgroundColor: const Color(0xffffffff),
              ),

              /// Explore
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
                  color: Color(0xff5B2EFF),
                  fit: BoxFit.cover,
                ),
                label: "Scan",
                backgroundColor: const Color(0xffffffff),
              ),

              /// Chat
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
                  color: Color(0xff5B2EFF),
                  fit: BoxFit.cover,
                ),
                label: "Contacts",
                backgroundColor: const Color(0xffffffff),
              ),

              /// Saved
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
                  color: Color(0xff5B2EFF),
                  fit: BoxFit.cover,
                ),
                label: "Setting",
                backgroundColor: const Color(0xffffffff),
              ),

            ],
          ),
        ),
      );
    });
  }
}
