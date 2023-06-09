import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';

class CommentsController extends GetxController {
  TextEditingController frameThirtySixController = TextEditingController();

  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

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
