import '../controller/comments_controller.dart';
import '../models/comments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

// ignore: must_be_immutable
class CommentsItemWidget extends StatelessWidget {
  CommentsItemWidget(this.commentsItemModelObj);

  CommentsItemModel commentsItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse21,
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
                left: 16,
                top: 8,
                bottom: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_rizal_reynaldhi".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium18Gray700,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_35_minutes_ago".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium10Gray50001,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: getHorizontalSize(
            382.00,
          ),
          margin: getMargin(
            top: 27,
          ),
          child: Text(
            "msg_most_people_nev".tr,
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular16Gray700,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 25,
          ),
          child: Text(
            "lbl_reply".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold16,
          ),
        ),
      ],
    );
  }
}
