import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/discover_page/models/discover_model.dart';
import 'package:flutter/material.dart';

class DiscoverController extends GetxController {
  DiscoverController(this.discoverModelObj);

  TextEditingController group9020Controller = TextEditingController();

  Rx<DiscoverModel> discoverModelObj;

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
