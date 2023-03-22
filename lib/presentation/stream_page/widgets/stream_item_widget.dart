import '../controller/stream_controller.dart';
import '../models/stream_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class StreamItemWidget extends StatelessWidget {
  StreamItemWidget(this.streamItemModelObj, {this.onTapColumntwentyseven});

  StreamItemModel streamItemModelObj;

  var controller = Get.find<StreamController>();

  VoidCallback? onTapColumntwentyseven;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          onTapColumntwentyseven!();
        },
        child: Padding(
          padding: getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img27,
                height: getVerticalSize(
                  540.00,
                ),
                width: getHorizontalSize(
                  356.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    15.00,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse11,
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
                          left: 18,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_rosalia".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "lbl_45_minutes_ago".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular14Gray600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse11,
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
                          left: 205,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 3,
                          bottom: 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_rosalia".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_45_minutes_ago".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular14Gray600,
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
      ),
    );
  }
}
