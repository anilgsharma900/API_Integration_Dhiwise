import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/daily_new_screen/models/daily_new_model.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DailyNewController extends GetxController {
  TextEditingController group9021Controller = TextEditingController();

  Rx<DailyNewModel> dailyNewModelObj = DailyNewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9021Controller.dispose();
  }
}
