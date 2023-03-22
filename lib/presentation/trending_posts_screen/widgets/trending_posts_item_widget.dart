import '../controller/trending_posts_controller.dart';
import '../models/trending_posts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class TrendingPostsItemWidget extends StatelessWidget {
  TrendingPostsItemWidget(this.trendingPostsItemModelObj);

  TrendingPostsItemModel trendingPostsItemModelObj;

  var controller = Get.find<TrendingPostsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.outlineBlack90019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse21,
                height: getSize(
                  35.00,
                ),
                width: getSize(
                  35.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    17.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_rizal_reynaldhi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium12WhiteA700,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
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
            ],
          ),
          Container(
            width: getHorizontalSize(
              137.00,
            ),
            margin: getMargin(
              top: 11,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_vacation_to_bal2".tr,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_e".tr,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Row(
              children: [
                Text(
                  "lbl_bali".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                  ),
                  child: Text(
                    "lbl_dreams".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 18,
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
                    top: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                    bottom: 1,
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
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 2,
                  ),
                  child: Text(
                    "lbl_800".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12,
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
