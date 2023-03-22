import 'controller/for_you_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/for_you_page/for_you_page.dart';
import 'package:social_template/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_template/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

class ForYouTabContainerScreen extends GetWidget<ForYouTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imageNotFound,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            185.00,
                          ),
                          width: size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.5,
                                0,
                              ),
                              end: Alignment(
                                0.5,
                                1,
                              ),
                              colors: [
                                ColorConstant.black9007f,
                                ColorConstant.gray40000,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            right: 1,
                          ),
                          decoration: AppDecoration.gradientGray40000Black900ad,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  50.00,
                                ),
                                leadingWidth: 66,
                                leading: AppbarCircleimage1(
                                  imagePath: ImageConstant.imageNotFound,
                                  margin: getMargin(
                                    left: 16,
                                  ),
                                ),
                                title: Padding(
                                  padding: getPadding(
                                    left: 24,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarSubtitle(
                                        text: "lbl_lucas_anna".tr,
                                      ),
                                      AppbarSubtitle3(
                                        text: "lbl_35_16".tr,
                                        margin: getMargin(
                                          top: 4,
                                          right: 76,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    imagePath: ImageConstant.imageNotFound,
                                    margin: getMargin(
                                      left: 16,
                                      top: 13,
                                      right: 16,
                                      bottom: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    left: 7,
                    bottom: 49,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          359.00,
                        ),
                        margin: getMargin(
                          left: 9,
                        ),
                        child: TabBar(
                          controller: controller.group9148Controller,
                          tabs: [
                            Tab(
                              text: "lbl_for_you".tr,
                            ),
                            Tab(
                              text: "lbl_following".tr,
                            ),
                            Tab(
                              text: "lbl_trending".tr,
                            ),
                          ],
                          labelColor: ColorConstant.whiteA700,
                          unselectedLabelColor: ColorConstant.whiteA70099,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 36,
                        ),
                        height: getVerticalSize(
                          251.00,
                        ),
                        child: TabBarView(
                          controller: controller.group9148Controller,
                          children: [
                            ForYouPage(),
                            ForYouPage(),
                            ForYouPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
