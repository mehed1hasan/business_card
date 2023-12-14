import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/remote/model/get_card_initial_data_model.dart';
import '../../../data/remote/repository/edit_card_repository.dart';
import '../../../data/remote/repository/get_card_initial_data_repository.dart';
import '../../../routes/app_pages.dart';
import '../../cards/controllers/cards_controller.dart';
import 'dart:io' as Io;

import '../widget/add_profile_picture_bottom_sheet.dart';

class EditCardController extends GetxController {
  //TODO: Implement EditCardController

  CardsController? cardsController;

  @override
  void onInit() {
    // TODO: implement onInit
    //cardsController = Get.arguments;
    cardsController = Get.find<CardsController>();

    getCardInitialData();
    assignAllValue();
    super.onInit();

  }

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

  final imagePath = "".obs;
  final imagePathFromApi="".obs;
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
      EditAddProfilePicture(
        controller: this,
      ),
    );
  }

  /// ////////////////////////// GetCardInitialData Theme Api Call ///////////////////
  final cardInitialDataList = GetCardInitialDataModel().obs;
  final themeColorList = [].obs;
  final themeColorIdList = [].obs;
  final currentColorIndex = 0.obs;
  final currentColorId=9.obs;
  final currentDesignIndex = 0.obs;
  final currentColor = "".obs;
  final currentThemeId = 1.obs;
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
      currentColorIndex.value = themeColorIdList.indexOf(cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].display!.cardThemeColor!.id!.toInt());

      isLoading(false);
    }
  }


  /// Save New Card Data Post Method Call //////////////////////////////////////
  Future editCard()async{

    final response = await EditCardRepository().editCard(
      cardsController!.currentCardId.value.toInt(),
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
    if(response==200){
      CardsController().getAllCard();
      Get.offAllNamed(Routes.CARDS);
    }
  }

  /// Assign All Controller and variable value /////////////////////////////////
  assignAllValue(){
    cardNameController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.cardName.toString() ?? "";
    firstNameController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.personal!.nameFirst.toString() ?? "";
    firstNameController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.personal!.nameLast.toString() ?? "";
    prefixController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.personal!.prefix.toString() ?? "";
    titleController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.affiliation!.title.toString() ?? "";
    departmentController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.affiliation!.department.toString() ?? "";
    headlineController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.affiliation!.aboutHeadline.toString() ?? "";
    companyNameController.value.text = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].general!.affiliation!.company.toString() ?? "";
    imagePathFromApi.value = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].display!.profileImageUrl.toString() ?? "";
    currentDesignIndex.value = cardsController!.userCardList.value.data?.model![cardsController!.currentCardIndex.value].display!.cardStyle!.id!.toInt() ?? 0;
    currentDesignIndex.value = currentDesignIndex.value-1;

    //print("Color Index: ${currentColorIndex}");
    //currentColorIndex.value = 4;
    //for(int i=0; i<themeColorIdList.length;)
    //print("*****EditCard Controller Card Name: ${cardsController!.userCardList.value.data?.model![3].general!.cardName.toString()}************");
  }
}
