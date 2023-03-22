import '../controller/stories_controller.dart';
import '../models/listnineteen1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listnineteen1ItemWidget extends StatelessWidget {
  Listnineteen1ItemWidget(this.listnineteen1ItemModelObj);

  Listnineteen1ItemModel listnineteen1ItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  144.00,
                ),
                width: getHorizontalSize(
                  147.00,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img19144x147,
                      height: getVerticalSize(
                        144.00,
                      ),
                      width: getHorizontalSize(
                        147.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          10.00,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomButton(
                      height: 20,
                      width: 54,
                      text: "lbl_live2".tr,
                      margin: getMargin(
                        left: 12,
                        top: 12,
                      ),
                      variant: ButtonVariant.FillDeeppurpleA200,
                      shape: ButtonShape.CircleBorder10,
                      padding: ButtonPadding.PaddingT3,
                      fontStyle: ButtonFontStyle.InterMedium10,
                      prefixWidget: Container(
                        margin: getMargin(
                          right: 4,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgVideocamera,
                        ),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Text(
                  "msg_live_we_the_f".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold14,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "msg_19_00_forg".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12Gray500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
