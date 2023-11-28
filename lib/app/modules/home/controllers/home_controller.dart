import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cards/views/cards_view.dart';
import '../../contacts/views/contacts_view.dart';
import '../../scan/views/scan_view.dart';
import '../../settings/views/settings_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final currentScreenIndex = 0.obs;


  List<Widget> screen = <Widget>[
    const CardsView(),
    const ScanView(),
    const ContactsView(),
    const SettingsView(),
  ];

  /*@override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }*/

  void increment() => count.value++;
}
