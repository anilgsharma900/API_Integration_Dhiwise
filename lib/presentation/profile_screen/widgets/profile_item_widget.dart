import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(this.profileItemModelObj);

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  imagePath: ImageConstant.imgEllipse14,
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
                    top: 6,
                    bottom: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_rosalia".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium18,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Text(
                          "lbl_35_minutes_ago".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium10Bluegray100,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgGroup8916,
                  height: getVerticalSize(
                    6.00,
                  ),
                  width: getHorizontalSize(
                    30.00,
                  ),
                  margin: getMargin(
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
              right: 5,
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
    );
  }
}
