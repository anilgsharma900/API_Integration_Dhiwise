import 'controller/stream_tab_container_controller.dart';
import 'models/stream_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/stream_page/stream_page.dart';
import 'package:social_template/widgets/app_bar/appbar_iconbutton.dart';
import 'package:social_template/widgets/app_bar/appbar_searchview.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class StreamTabContainerPage extends StatelessWidget {
  StreamTabContainerController controller =
      Get.put(StreamTabContainerController(StreamTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(53.00),
                title: AppbarSearchview(
                    hintText: "lbl_search".tr,
                    controller: controller.group9020Controller,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarIconbutton(
                      imagePath: ImageConstant.imageNotFound,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 8),
                      onTap: onTapCamera2)
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 22, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(398.00),
                          child: TabBar(
                              controller: controller.frame9031Controller,
                              tabs: [
                                Tab(text: "lbl_trending".tr),
                                Tab(text: "lbl_latest".tr),
                                Tab(text: "lbl_discover".tr),
                                Tab(text: "lbl_daily_new".tr)
                              ],
                              labelColor: ColorConstant.deepPurpleA200,
                              unselectedLabelColor:
                                  ColorConstant.deepPurple200)),
                      Container(
                          margin: getMargin(top: 21, bottom: 5),
                          height: getVerticalSize(602.00),
                          child: TabBarView(
                              controller: controller.frame9031Controller,
                              children: [
                                StreamPage(),
                                StreamPage(),
                                StreamPage(),
                                StreamPage()
                              ]))
                    ]))));
  }

  onTapCamera2() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
