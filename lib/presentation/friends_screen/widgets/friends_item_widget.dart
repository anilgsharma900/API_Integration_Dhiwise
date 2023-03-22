import '../controller/friends_controller.dart';
import '../models/friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';

// ignore: must_be_immutable
class FriendsItemWidget extends StatelessWidget {
  FriendsItemWidget(this.friendsItemModelObj);

  FriendsItemModel friendsItemModelObj;

  var controller = Get.find<FriendsController>();

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
                  style: AppStyle.txtInterRegular14Gray700,
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
    );
  }
}
