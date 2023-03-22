import '../daily_new_screen/widgets/listfive_item_widget.dart';
import '../daily_new_screen/widgets/listnineteen_item_widget.dart';
import 'controller/daily_new_controller.dart';
import 'models/listfive_item_model.dart';
import 'models/listnineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/detailed_profile_page/detailed_profile_page.dart';
import 'package:social_template/presentation/discover_page/discover_page.dart';
import 'package:social_template/presentation/messages_page/messages_page.dart';
import 'package:social_template/presentation/notifications_page/notifications_page.dart';
import 'package:social_template/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:social_template/widgets/app_bar/appbar_circleimage.dart';
import 'package:social_template/widgets/app_bar/appbar_searchview.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';

class DailyNewScreen extends GetWidget<DailyNewController> {
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
                    controller: controller.group9021Controller,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse14,
                      margin: getMargin(left: 16, top: 5, right: 19, bottom: 8))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 22, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(right: 21),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtTrending();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 4, bottom: 3),
                                        child: Text("lbl_trending".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular18))),
                                Padding(
                                    padding:
                                        getPadding(left: 30, top: 2, bottom: 5),
                                    child: Text("lbl_latest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular18)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtDiscover();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 30, top: 2, bottom: 5),
                                        child: Text("lbl_discover".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular18))),
                                Padding(
                                    padding: getPadding(left: 30),
                                    child: Text("lbl_daily_new".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold24))
                              ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(211.00),
                              child: Obx(() => ListView.builder(
                                  padding: getPadding(left: 16, top: 32),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.dailyNewModelObj.value
                                      .listnineteenItemList.length,
                                  itemBuilder: (context, index) {
                                    ListnineteenItemModel model = controller
                                        .dailyNewModelObj
                                        .value
                                        .listnineteenItemList[index];
                                    return ListnineteenItemWidget(model);
                                  })))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(382.00),
                              margin: getMargin(top: 30, bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineBlack90019
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse2150x50,
                                              height: getSize(50.00),
                                              width: getSize(50.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(25.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 6, bottom: 4),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_avari_kudhra".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium18),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "lbl_1_hour_ago".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium10Bluegray100))
                                                  ])),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGroup8916,
                                              height: getVerticalSize(6.00),
                                              width: getHorizontalSize(30.00),
                                              margin: getMargin(
                                                  left: 129,
                                                  top: 22,
                                                  bottom: 22))
                                        ])),
                                    Container(
                                        height: getVerticalSize(200.00),
                                        child: Obx(() => ListView.builder(
                                            padding: getPadding(top: 33),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount: controller
                                                .dailyNewModelObj
                                                .value
                                                .listfiveItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListfiveItemModel model =
                                                  controller
                                                      .dailyNewModelObj
                                                      .value
                                                      .listfiveItemList[index];
                                              return ListfiveItemWidget(model);
                                            }))),
                                    Container(
                                        width: getHorizontalSize(340.00),
                                        margin: getMargin(top: 18),
                                        child: Text("msg_this_is_a_very".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular16)),
                                    Padding(
                                        padding:
                                            getPadding(top: 19, bottom: 15),
                                        child: Row(children: [
                                          Text("lbl_animal".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterRegular14),
                                          Padding(
                                              padding: getPadding(left: 30),
                                              child: Text("lbl_forest".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14)),
                                          Padding(
                                              padding: getPadding(left: 30),
                                              child: Text("lbl_rabbit".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14))
                                        ]))
                                  ])))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.discoverPage;
      case BottomBarEnum.Streams:
        return AppRoutes.streamTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.detailedProfilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.discoverPage:
        return DiscoverPage();
      case AppRoutes.streamTabContainerPage:
        return StreamTabContainerPage();
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.detailedProfilePage:
        return DetailedProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapTxtTrending() {
    Get.toNamed(AppRoutes.discoverContainerScreen);
  }

  onTapTxtDiscover() {
    Get.toNamed(AppRoutes.discoverContainerScreen);
  }
}
