import '../controller/messages_controller.dart';
import '../models/listellipsefifteen3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class Listellipsefifteen3ItemWidget extends StatelessWidget {
  Listellipsefifteen3ItemWidget(this.listellipsefifteen3ItemModelObj);

  Listellipsefifteen3ItemModel listellipsefifteen3ItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                  top: 13,
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
      ),
    );
  }
}
