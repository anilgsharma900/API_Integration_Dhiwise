import '../controller/messages_controller.dart';
import '../models/listellipsetwentytwo_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsetwentytwoOneItemWidget extends StatelessWidget {
  ListellipsetwentytwoOneItemWidget(this.listellipsetwentytwoOneItemModelObj);

  ListellipsetwentytwoOneItemModel listellipsetwentytwoOneItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getVerticalSize(
              54.00,
            ),
            width: getHorizontalSize(
              52.00,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse22,
                  height: getVerticalSize(
                    54.00,
                  ),
                  width: getHorizontalSize(
                    52.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      27.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: getSize(
                      13.00,
                    ),
                    width: getSize(
                      13.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.greenA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          6.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.whiteA700,
                        width: getHorizontalSize(
                          2.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 2,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_richard_alves".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "msg_hey_bro_where".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16Gray600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 30,
            ),
            child: Text(
              "lbl_10_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Gray600,
            ),
          ),
        ],
      ),
    );
  }
}
