import '../controller/trending_controller.dart';
import '../models/trending_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class TrendingItemWidget extends StatelessWidget {
  TrendingItemWidget(this.trendingItemModelObj);

  TrendingItemModel trendingItemModelObj;

  var controller = Get.find<TrendingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack90019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              221.00,
            ),
            width: getHorizontalSize(
              382.00,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img40221x382,
                  height: getVerticalSize(
                    221.00,
                  ),
                  width: getHorizontalSize(
                    382.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      15.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: getPadding(
                      left: 16,
                      top: 18,
                      right: 16,
                      bottom: 18,
                    ),
                    decoration:
                        AppDecoration.gradientBlack9009eBlack9009e1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse7,
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
                          margin: getMargin(
                            top: 135,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 136,
                            right: 186,
                            bottom: 3,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_rick_onad".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold20WhiteA700,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "lbl_40_min_ago".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
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
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                352.00,
              ),
              margin: getMargin(
                top: 24,
              ),
              child: Text(
                "msg_this_is_the_mom".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 30,
              bottom: 54,
            ),
            child: Row(
              children: [
                Text(
                  "lbl_huge".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    left: 30,
                  ),
                  child: Text(
                    "lbl_fotography".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 30,
                  ),
                  child: Text(
                    "lbl_nature".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
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
