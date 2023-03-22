import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/for_you_tab_container_screen/models/for_you_tab_container_model.dart';
import 'package:flutter/material.dart';

class ForYouTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ForYouTabContainerModel> forYouTabContainerModelObj =
      ForYouTabContainerModel().obs;

  late TabController group9148Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
