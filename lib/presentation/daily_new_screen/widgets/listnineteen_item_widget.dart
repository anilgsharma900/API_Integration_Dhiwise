import '../controller/daily_new_controller.dart';
import '../models/listnineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class ListnineteenItemWidget extends StatelessWidget {
  ListnineteenItemWidget(this.listnineteenItemModelObj);

  ListnineteenItemModel listnineteenItemModelObj;

  var controller = Get.find<DailyNewController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            179.00,
          ),
          width: getHorizontalSize(
            147.00,
          ),
          margin: getMargin(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img19,
                height: getVerticalSize(
                  179.00,
                ),
                width: getHorizontalSize(
                  147.00,
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
                    top: 12,
                    bottom: 12,
                  ),
                  decoration:
                      AppDecoration.gradientBlack9009eBlack9009e.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          top: 121,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.deepPurpleA200,
                            width: getHorizontalSize(
                              1.50,
                            ),
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Container(
                          height: getSize(
                            34.00,
                          ),
                          width: getSize(
                            34.00,
                          ),
                          padding: getPadding(
                            all: 3,
                          ),
                          decoration:
                              AppDecoration.outlineDeeppurpleA200.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse14,
                                height: getSize(
                                  28.00,
                                ),
                                width: getSize(
                                  28.00,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    14.00,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 132,
                          bottom: 9,
                        ),
                        child: Text(
                          "lbl_agness_monica".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium10,
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
