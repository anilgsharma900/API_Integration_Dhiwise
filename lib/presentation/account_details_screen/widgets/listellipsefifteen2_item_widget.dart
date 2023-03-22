import '../controller/account_details_controller.dart';
import '../models/listellipsefifteen2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class Listellipsefifteen2ItemWidget extends StatelessWidget {
  Listellipsefifteen2ItemWidget(this.listellipsefifteen2ItemModelObj);

  Listellipsefifteen2ItemModel listellipsefifteen2ItemModelObj;

  var controller = Get.find<AccountDetailsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: getMargin(),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.deepPurpleA200,
            width: getHorizontalSize(
              2.00,
            ),
          ),
          borderRadius: BorderRadiusStyle.circleBorder32,
        ),
        child: Container(
          height: getSize(
            64.00,
          ),
          width: getSize(
            64.00,
          ),
          padding: getPadding(
            left: 6,
            top: 5,
            right: 6,
            bottom: 5,
          ),
          decoration: AppDecoration.outlineDeeppurpleA2001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder32,
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1554x52,
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
            ],
          ),
        ),
      ),
    );
  }
}
