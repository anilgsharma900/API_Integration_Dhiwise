import '../controller/trending_tab_container_controller.dart';
import '../models/listellipsefifteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsefifteenItemWidget extends StatelessWidget {
  ListellipsefifteenItemWidget(this.listellipsefifteenItemModelObj);

  ListellipsefifteenItemModel listellipsefifteenItemModelObj;

  var controller = Get.find<TrendingTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
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
                      imagePath: ImageConstant.imageNotFound,
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
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Text(
                "lbl_roy".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
