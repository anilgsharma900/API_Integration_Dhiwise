import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
import 'package:flutter/material.dart';

class StoriesAndTweetsController extends GetxController {
  TextEditingController group9088Controller = TextEditingController();

  Rx<StoriesAndTweetsModel> storiesAndTweetsModelObj =
      StoriesAndTweetsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9088Controller.dispose();
  }
}
