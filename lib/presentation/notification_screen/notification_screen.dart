import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_switch.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.deepPurpleA200,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 168,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationbell,
                height: getVerticalSize(
                  161.00,
                ),
                width: getHorizontalSize(
                  146.00,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 38,
                ),
                child: Text(
                  "msg_turn_on_notific2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold32,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Text(
                  "msg_turn_on_notific".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 49,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_notifications".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16,
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch.value,
                        onChanged: (value) {
                          controller.isSelectedSwitch.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
