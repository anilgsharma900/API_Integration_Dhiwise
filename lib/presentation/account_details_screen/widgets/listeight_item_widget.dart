import '../controller/account_details_controller.dart';
import '../models/listeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class ListeightItemWidget extends StatelessWidget {
  ListeightItemWidget(this.listeightItemModelObj);

  ListeightItemModel listeightItemModelObj;

  var controller = Get.find<AccountDetailsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.img46,
        height: getVerticalSize(
          161.00,
        ),
        width: getHorizontalSize(
          117.00,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
        margin: getMargin(),
      ),
    );
  }
}
