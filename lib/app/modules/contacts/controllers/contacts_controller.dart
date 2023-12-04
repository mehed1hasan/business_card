import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/modules/contacts/list/list.dart';

import '../../model/contacts_page_card_model.dart';

class ContactsController extends GetxController {
  //TODO: Implement ContactsController

  final searchController = TextEditingController().obs;

  final contactCardList = <ContactCards>[
    ContactCards(
        contacts: allContactList,
        iconPath: "assets/contacts icon/all contacts icon.png",
        title: "All Contacts"),
    ContactCards(
        contacts: recentContactList,
        iconPath: "assets/contacts icon/live contacts icon.png",
        title: "Live Contacts"),
    ContactCards(
        contacts: liveContactList,
        iconPath: "assets/contacts icon/recent contacts icon.png",
        title: "Recent Contacts"),
    ContactCards(
        contacts: workContactList,
        iconPath: "assets/contacts icon/work contacts icon.png",
        title: "Work Contacts"),
  ].obs;


}
