import '../controller/invite_friends_controller.dart';
import '../models/invite_friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class InviteFriendsItemWidget extends StatelessWidget {
  InviteFriendsItemWidget(this.inviteFriendsItemModelObj);

  InviteFriendsItemModel inviteFriendsItemModelObj;

  var controller = Get.find<InviteFriendsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse5,
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
            left: 24,
            top: 1,
            bottom: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_kevin_allsrub".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold20,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "msg_your_e_friends".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14Gray600,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            top: 13,
            bottom: 13,
          ),
          color: ColorConstant.deepPurpleA200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Container(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            padding: getPadding(
              left: 6,
              top: 8,
              right: 6,
              bottom: 8,
            ),
            decoration: AppDecoration.fillDeeppurpleA200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgCheckmark,
                  height: getVerticalSize(
                    7.00,
                  ),
                  width: getHorizontalSize(
                    11.00,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
