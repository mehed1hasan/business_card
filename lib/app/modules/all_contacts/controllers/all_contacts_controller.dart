import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_business_card/app/modules/contacts/list/list.dart';
import 'package:new_business_card/app/modules/model/contacts_list_model.dart';

import '../../contacts/controllers/contacts_controller.dart';

class AllContactsController extends GetxController {
  //TODO: Implement AllContactsController

  final searchController = TextEditingController().obs;
  List<ContactsLists>? showAllContactsList = <ContactsLists>[].obs;




  @override
  void onInit() {
    // TODO: implement initState
    fetchData();
    super.onInit();
  }

  void fetchData(){
    allContactList.sort((a, b) => a.name.toString().compareTo(b.name.toString()));
    showAllContactsList!.assignAll(allContactList.map((item) =>
    ContactsLists(
      name: item.name,
      tag: item.name![0],
      imagePath: item.imagePath,
      designation: item.designation

    )).toList());
  }
}
