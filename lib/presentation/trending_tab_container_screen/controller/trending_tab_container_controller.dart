import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/trending_tab_container_screen/models/trending_tab_container_model.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class TrendingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController group9021Controller = TextEditingController();

  Rx<TrendingTabContainerModel> trendingTabContainerModelObj =
      TrendingTabContainerModel().obs;

  late TabController frame9031Controller =
      Get.put(TabController(vsync: this, length: 4));

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
