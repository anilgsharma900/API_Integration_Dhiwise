import '../stories_screen/widgets/listellipsefifteen1_item_widget.dart';
import '../stories_screen/widgets/listnineteen1_item_widget.dart';
import 'controller/stories_controller.dart';
import 'models/listellipsefifteen1_item_model.dart';
import 'models/listnineteen1_item_model.dart';
import 'package:flutter/material.dart';
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

class StoriesScreen extends GetWidget<StoriesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            53.00,
          ),
          title: AppbarSearchview(
            hintText: "lbl_search".tr,
            controller: controller.group9078Controller,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgPlus,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 16,
                bottom: 8,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            top: 19,
            bottom: 19,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                ),
                child: Text(
                  "lbl_stories".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold24,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    112.00,
                  ),
                  child: Obx(
                    () => ListView.builder(
                      padding: getPadding(
                        left: 16,
                        top: 24,
                        right: 14,
                      ),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.storiesModelObj.value
                          .listellipsefifteen1ItemList.length,
                      itemBuilder: (context, index) {
                        Listellipsefifteen1ItemModel model = controller
                            .storiesModelObj
                            .value
                            .listellipsefifteen1ItemList[index];
                        return Listellipsefifteen1ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(
                    382.00,
                  ),
                  margin: getMargin(
                    top: 22,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 21,
                    right: 16,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.outlineBlack90019.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse21,
                              height: getSize(
                                50.00,
                              ),
                              width: getSize(
                                50.00,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  25.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 8,
                                bottom: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_rizal_reynaldhi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_35_minutes_ago".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterMedium10Bluegray100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgGroup8916,
                              height: getVerticalSize(
                                6.00,
                              ),
                              width: getHorizontalSize(
                                30.00,
                              ),
                              margin: getMargin(
                                left: 124,
                                top: 22,
                                bottom: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          332.00,
                        ),
                        margin: getMargin(
                          top: 27,
                        ),
                        child: Text(
                          "msg_most_people_nev".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLightbulb,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                19.00,
                              ),
                              margin: getMargin(
                                top: 5,
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 5,
                                bottom: 4,
                              ),
                              child: Text(
                                "lbl_2200".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgUser18x19,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                19.00,
                              ),
                              margin: getMargin(
                                left: 29,
                                top: 4,
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 6,
                                bottom: 3,
                              ),
                              child: Text(
                                "lbl_800".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                25.00,
                              ),
                              width: getHorizontalSize(
                                54.00,
                              ),
                              margin: getMargin(
                                left: 155,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse30,
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse31,
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(
                                      right: 13,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse32,
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 22,
                ),
                child: Text(
                  "lbl_events".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold32DeeppurpleA200,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    212.00,
                  ),
                  child: Obx(
                    () => ListView.builder(
                      padding: getPadding(
                        left: 16,
                        top: 12,
                      ),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .storiesModelObj.value.listnineteen1ItemList.length,
                      itemBuilder: (context, index) {
                        Listnineteen1ItemModel model = controller
                            .storiesModelObj.value.listnineteen1ItemList[index];
                        return Listnineteen1ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
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

  ///Handling page based on route
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
}
