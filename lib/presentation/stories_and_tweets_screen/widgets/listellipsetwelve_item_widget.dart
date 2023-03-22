import '../controller/stories_and_tweets_controller.dart';
import '../models/listellipsetwelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListellipsetwelveItemWidget extends StatelessWidget {
  ListellipsetwelveItemWidget(this.listellipsetwelveItemModelObj,
      {this.onTapColumnhome, this.onTapColumnuser});

  ListellipsetwelveItemModel listellipsetwelveItemModelObj;

  var controller = Get.find<StoriesAndTweetsController>();

  VoidCallback? onTapColumnhome;

  VoidCallback? onTapColumnuser;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        329.00,
      ),
      width: size.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse12,
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
                          top: 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_albert_o_connor".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "lbl_4_hours_ago".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular14Gray600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                        height: 33,
                        width: 76,
                        text: "lbl_follow".tr,
                        margin: getMargin(
                          top: 9,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: getHorizontalSize(
                      348.00,
                    ),
                    margin: getMargin(
                      left: 2,
                      top: 19,
                    ),
                    child: Text(
                      "msg_introduce_i_am".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular16Gray700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img22,
                          height: getVerticalSize(
                            115.00,
                          ),
                          width: getHorizontalSize(
                            85.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img25,
                          height: getVerticalSize(
                            115.00,
                          ),
                          width: getHorizontalSize(
                            85.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          margin: getMargin(
                            left: 8,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img411,
                          height: getVerticalSize(
                            115.00,
                          ),
                          width: getHorizontalSize(
                            85.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          margin: getMargin(
                            left: 8,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img16,
                          height: getVerticalSize(
                            115.00,
                          ),
                          width: getHorizontalSize(
                            85.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                          margin: getMargin(
                            left: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFavorite,
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
                            bottom: 5,
                          ),
                          child: Text(
                            "lbl_2200".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12DeeppurpleA200,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgDashboard,
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
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_800".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12DeeppurpleA200,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: getVerticalSize(
                            25.00,
                          ),
                          width: getHorizontalSize(
                            54.00,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              margin: getMargin(
                top: 177,
                bottom: 72,
              ),
              padding: getPadding(
                left: 41,
                top: 13,
                right: 41,
                bottom: 13,
              ),
              decoration: AppDecoration.outlineDeeppurpleA20033.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapColumnhome!();
                    },
                    child: Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgHome,
                            height: getSize(
                              30.00,
                            ),
                            width: getSize(
                              30.00,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "lbl_home".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVideocamera30x30,
                          height: getSize(
                            30.00,
                          ),
                          width: getSize(
                            30.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "lbl_streams".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular10Bluegray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgComputer,
                          height: getSize(
                            30.00,
                          ),
                          width: getSize(
                            30.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Text(
                            "lbl_messages".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular10Bluegray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgNotification,
                          height: getSize(
                            30.00,
                          ),
                          width: getSize(
                            30.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "lbl_notifications".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular10Bluegray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapColumnuser!();
                    },
                    child: Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getSize(
                              30.00,
                            ),
                            width: getSize(
                              30.00,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: Text(
                              "lbl_profile".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular10Bluegray400,
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
        ],
      ),
    );
  }
}
