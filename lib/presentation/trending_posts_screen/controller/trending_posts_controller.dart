import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/trending_posts_screen/models/trending_posts_model.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class TrendingPostsController extends GetxController {
  TextEditingController group9088Controller = TextEditingController();

  Rx<TrendingPostsModel> trendingPostsModelObj = TrendingPostsModel().obs;

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
