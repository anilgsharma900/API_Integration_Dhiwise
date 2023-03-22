import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/stories_screen/models/stories_model.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class StoriesController extends GetxController {
  TextEditingController group9078Controller = TextEditingController();

  Rx<StoriesModel> storiesModelObj = StoriesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9078Controller.dispose();
  }
}
