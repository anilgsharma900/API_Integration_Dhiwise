import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/stream_tab_container_page/models/stream_tab_container_model.dart';
import 'package:flutter/material.dart';

class StreamTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  StreamTabContainerController(this.streamTabContainerModelObj);

  TextEditingController group9020Controller = TextEditingController();

  Rx<StreamTabContainerModel> streamTabContainerModelObj;

  late TabController frame9031Controller =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9020Controller.dispose();
  }
}
