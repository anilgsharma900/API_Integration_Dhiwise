import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/friends_screen/models/friends_model.dart';
import 'package:flutter/material.dart';

class FriendsController extends GetxController {
  TextEditingController group9116Controller = TextEditingController();

  Rx<FriendsModel> friendsModelObj = FriendsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9116Controller.dispose();
  }
}
