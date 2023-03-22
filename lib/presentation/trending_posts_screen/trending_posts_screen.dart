import '../trending_posts_screen/widgets/trending_posts_item_widget.dart';
import 'controller/trending_posts_controller.dart';
import 'models/trending_posts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/detailed_profile_page/detailed_profile_page.dart';
import 'package:social_template/presentation/discover_page/discover_page.dart';
import 'package:social_template/presentation/messages_page/messages_page.dart';
import 'package:social_template/presentation/notifications_page/notifications_page.dart';
import 'package:social_template/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:social_template/widgets/app_bar/appbar_iconbutton.dart';
import 'package:social_template/widgets/app_bar/appbar_searchview.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';

class TrendingPostsScreen extends GetWidget<TrendingPostsController> {
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
                      onTap: onTapCamera)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 22, bottom: 3),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_trending".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold24),
                                    Padding(
                                        padding: getPadding(top: 4, bottom: 3),
                                        child: Text("lbl_latest".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular18)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtDiscover();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 4),
                                            child: Text("lbl_discover".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular18))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtDailyNew();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 5, bottom: 3),
                                            child: Text("lbl_daily_new".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular18)))
                                  ]),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Obx(() =>
                                      StaggeredGridView.countBuilder(
                                          shrinkWrap: true,
                                          primary: false,
                                          crossAxisCount: 4,
                                          crossAxisSpacing:
                                              getHorizontalSize(16.00),
                                          mainAxisSpacing:
                                              getHorizontalSize(16.00),
                                          staggeredTileBuilder: (index) {
                                            return StaggeredTile.fit(2);
                                          },
                                          itemCount: controller
                                              .trendingPostsModelObj
                                              .value
                                              .trendingPostsItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            TrendingPostsItemModel model =
                                                controller
                                                        .trendingPostsModelObj
                                                        .value
                                                        .trendingPostsItemList[
                                                    index];
                                            return TrendingPostsItemWidget(
                                                model);
                                          })))
                            ])))),
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

  onTapTxtDiscover() {
    Get.toNamed(AppRoutes.discoverContainerScreen);
  }

  onTapTxtDailyNew() {
    Get.toNamed(AppRoutes.dailyNewScreen);
  }

  onTapCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
