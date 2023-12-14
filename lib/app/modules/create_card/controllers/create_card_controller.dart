import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_business_card/app/data/remote/model/get_card_initial_data_model.dart';
import 'package:new_business_card/app/data/remote/repository/card_create_repository.dart';
import 'package:new_business_card/app/data/remote/repository/get_card_initial_data_repository.dart';
import 'package:new_business_card/app/modules/cards/controllers/cards_controller.dart';
import 'package:new_business_card/app/routes/app_pages.dart';
import '../widget/add_profile_picture_bottom_sheet.dart';
import 'dart:core';
import 'dart:io' as Io;

class CreateCardController extends GetxController {
  //TODO: Implement EditCardController
  @override
  void onInit() {
    // TODO: implement onInit
    getCardInitialData();
    super.onInit();

  }
  /// final GlobalKey<FormState> cardCreateFormkey = GlobalKey<FormState>();
  final cardCreateFormkey = GlobalKey<FormState>().obs;


  final cardNameController = TextEditingController().obs;
  final firstNameController = TextEditingController().obs;
  final lastNameController = TextEditingController().obs;
  final prefixController = TextEditingController().obs;
  final titleController = TextEditingController().obs;
  final departmentController = TextEditingController().obs;
  final companyNameController = TextEditingController().obs;
  final headlineController = TextEditingController().obs;

  final cardThemeColorId = 9.obs;
  final cardStyleId = 1.obs;




  var isPreview = 0.obs;

  final imagePath = "".obs;
  final ImagePicker imagePicker = ImagePicker();
  var profileImg64 = "".obs;
  Future getImageFromCamera() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      Get.back();
      imagePath.value = image.path.toString();
    }
    final bytes = await Io.File(imagePath.value).readAsBytes();
    profileImg64.value = base64Encode(bytes);
  }
  Future getImageFromGallery() async {
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    print(image?.path ?? 'image not avl');
    if (image != null) {
      Get.back();
      imagePath.value = image.path.toString();
    }
    final bytes = await Io.File(imagePath.value).readAsBytes();
    profileImg64.value = base64Encode(bytes);
    print("*****$profileImg64***");


  }

  ontapImagePick() {
    print('inside ontap image pick');
    //Get.back();
    Get.bottomSheet(
      /// Add Profile Bottom Sheet
      AddProfilePicture(
        controller: this,
      ),
    );
  }

  /// ////////////////////////// GetCardInitialData Theme Api Call ///////////////////
  final cardInitialDataList = GetCardInitialDataModel().obs;
  final themeColorList = [].obs;
  final themeColorIdList = [].obs;
  final currentColorIndex = 0.obs;
  final currentDesignIndex = 0.obs;
  final isLoading = true.obs;


  Future getCardInitialData() async{

    final response = await GetCardInitialDataRepository().getCardInitialData();

    if(response.statusCode==200){

      cardInitialDataList.value = response;

      /// Assign All color into list ///
      for(int i=0; i<cardInitialDataList.value.data!.cardThemeColors!.length; i++){
        themeColorIdList.add(cardInitialDataList.value.data!.cardThemeColors![i].id);
        themeColorList.add(cardInitialDataList.value.data!.cardThemeColors![i].primaryColorCode);
        themeColorList[i] = themeColorList[i].replaceAll(RegExp("ff"), '');
      }
      /*for(int i=0; i<themeColorList.length; i++){
        if (kDebugMode) {print(themeColorList[i]);}
      }*/
      isLoading(false);
    }
  }


  /// Save New Card Data Post Method Call ///////////////////////////////
  Future cardCreate()async{

    print("********Create Card Repository: ${cardStyleId} and ${cardThemeColorId} **********");

    final response = await CardCreateRepository().cardCreate(
      //cardName, firstName, lastName, prefix, title, company, department, aboutHeadline, cardThemeColorId
      cardNameController.value.text,
      firstNameController.value.text,
      lastNameController.value.text,
      prefixController.value.text,
      titleController.value.text,
      companyNameController.value.text,
      departmentController.value.text,
      headlineController.value.text,
      cardThemeColorId.value.toInt(),
      cardStyleId.value.toInt(),
      profileImg64.value,
    );
    print("*****EditCard Controller ********$response.statusCode ************");
    if(response.statusCode==200){
      CardsController().getAllCard();
      Get.offAllNamed(Routes.CARDS);
    }
  }

}
