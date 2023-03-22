import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/live_screen/models/live_model.dart';
import 'package:flutter/material.dart';

class LiveController extends GetxController {
  TextEditingController frameThirtySixController = TextEditingController();

  Rx<LiveModel> liveModelObj = LiveModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtySixController.dispose();
  }
}
