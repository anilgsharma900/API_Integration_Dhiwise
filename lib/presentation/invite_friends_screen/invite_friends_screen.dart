import '../invite_friends_screen/widgets/invite_friends_item_widget.dart';
import 'controller/invite_friends_controller.dart';
import 'models/invite_friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

class InviteFriendsScreen extends GetWidget<InviteFriendsController> {
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
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: onTapClose),
                actions: [
                  GestureDetector(
                      onTap: () {
                        onTapTxtNext();
                      },
                      child: Padding(
                          padding: getPadding(
                              left: 16, top: 14, right: 16, bottom: 16),
                          child: Text("lbl_next".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold18)))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 18, right: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_invite_friends".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold32DeeppurpleA200),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(2.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .deepPurple50));
                                      },
                                      itemCount: controller
                                          .inviteFriendsModelObj
                                          .value
                                          .inviteFriendsItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        InviteFriendsItemModel model =
                                            controller
                                                .inviteFriendsModelObj
                                                .value
                                                .inviteFriendsItemList[index];
                                        return InviteFriendsItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapClose() {
    Get.toNamed(AppRoutes.discoverContainerScreen);
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.discoverContainerScreen);
  }
}
