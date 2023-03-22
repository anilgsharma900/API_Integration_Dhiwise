import '../notifications_page/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationsPage extends StatelessWidget {
  NotificationsController controller =
      Get.put(NotificationsController(NotificationsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(53.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: onTapArrowleft5),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgGoogle50x50,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 16),
                      onTap: onTapGoogle1)
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("lbl_notifications".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(2.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepPurple50));
                              },
                              itemCount: controller.notificationsModelObj.value
                                  .notificationsItemList.length,
                              itemBuilder: (context, index) {
                                NotificationsItemModel model = controller
                                    .notificationsModelObj
                                    .value
                                    .notificationsItemList[index];
                                return NotificationsItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }

  onTapGoogle1() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
