import '../stories_and_tweets_screen/widgets/listellipsetwelve_item_widget.dart';
import '../stories_and_tweets_screen/widgets/listellipsetwentytwo_item_widget.dart';
import 'controller/stories_and_tweets_controller.dart';
import 'models/listellipsetwelve_item_model.dart';
import 'models/listellipsetwentytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_iconbutton.dart';
import 'package:social_template/widgets/app_bar/appbar_searchview.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

class StoriesAndTweetsScreen extends GetWidget<StoriesAndTweetsController> {
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
                    controller: controller.group9088Controller,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgCamera,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 8),
                      onTap: onTapCamera1)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 16),
                                  child: Text("lbl_stories".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold24)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(112.00),
                                      padding: getPadding(left: 80, right: 80),
                                      child: Obx(() => ListView.builder(
                                          padding: getPadding(
                                              left: 16, top: 24, right: 14),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .storiesAndTweetsModelObj
                                              .value
                                              .listellipsetwentytwoItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListellipsetwentytwoItemModel
                                                model = controller
                                                        .storiesAndTweetsModelObj
                                                        .value
                                                        .listellipsetwentytwoItemList[
                                                    index];
                                            return ListellipsetwentytwoItemWidget(
                                                model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(2.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .deepPurple50));
                                      },
                                      itemCount: controller
                                          .storiesAndTweetsModelObj
                                          .value
                                          .listellipsetwelveItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListellipsetwelveItemModel model =
                                            controller
                                                    .storiesAndTweetsModelObj
                                                    .value
                                                    .listellipsetwelveItemList[
                                                index];
                                        return ListellipsetwelveItemWidget(
                                            model,
                                            onTapColumnhome: onTapColumnhome,
                                            onTapColumnuser: onTapColumnuser);
                                      })))
                            ]))))));
  }

  onTapColumnhome() {
    Get.toNamed(AppRoutes.dailyNewScreen);
  }

  onTapColumnuser() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapCamera1() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
