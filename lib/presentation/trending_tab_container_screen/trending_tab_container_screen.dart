import '../trending_tab_container_screen/widgets/listellipsefifteen_item_widget.dart';
import 'controller/trending_tab_container_controller.dart';
import 'models/listellipsefifteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/detailed_profile_page/detailed_profile_page.dart';
import 'package:social_template/presentation/discover_page/discover_page.dart';
import 'package:social_template/presentation/messages_page/messages_page.dart';
import 'package:social_template/presentation/notifications_page/notifications_page.dart';
import 'package:social_template/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:social_template/presentation/trending_page/trending_page.dart';
import 'package:social_template/widgets/app_bar/appbar_circleimage.dart';
import 'package:social_template/widgets/app_bar/appbar_searchview.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';

class TrendingTabContainerScreen
    extends GetWidget<TrendingTabContainerController> {
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
            controller: controller.group9021Controller,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imageNotFound,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 19,
                bottom: 8,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 15,
                top: 21,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      88.00,
                    ),
                    child: Obx(
                      () => ListView.builder(
                        padding: getPadding(
                          left: 1,
                          right: 14,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.trendingTabContainerModelObj.value
                            .listellipsefifteenItemList.length,
                        itemBuilder: (context, index) {
                          ListellipsefifteenItemModel model = controller
                              .trendingTabContainerModelObj
                              .value
                              .listellipsefifteenItemList[index];
                          return ListellipsefifteenItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      398.00,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 30,
                    ),
                    child: TabBar(
                      controller: controller.frame9031Controller,
                      tabs: [
                        Tab(
                          text: "lbl_trending".tr,
                        ),
                        Tab(
                          text: "lbl_latest".tr,
                        ),
                        Tab(
                          text: "lbl_discover".tr,
                        ),
                        Tab(
                          text: "lbl_daily_new".tr,
                        ),
                      ],
                      labelColor: ColorConstant.deepPurpleA200,
                      unselectedLabelColor: ColorConstant.deepPurple200,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 27,
                    ),
                    height: getVerticalSize(
                      792.00,
                    ),
                    child: TabBarView(
                      controller: controller.frame9031Controller,
                      children: [
                        TrendingPage(),
                        TrendingPage(),
                        TrendingPage(),
                        TrendingPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
