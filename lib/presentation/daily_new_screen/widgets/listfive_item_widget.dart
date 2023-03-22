import '../controller/daily_new_controller.dart';
import '../models/listfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class ListfiveItemWidget extends StatelessWidget {
  ListfiveItemWidget(this.listfiveItemModelObj);

  ListfiveItemModel listfiveItemModelObj;

  var controller = Get.find<DailyNewController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.img40,
        height: getSize(
          167.00,
        ),
        width: getSize(
          167.00,
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
