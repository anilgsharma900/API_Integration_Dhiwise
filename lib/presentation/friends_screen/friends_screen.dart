import '../friends_screen/widgets/friends_item_widget.dart';
import 'controller/friends_controller.dart';
import 'models/friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_icon_button.dart';
import 'package:social_template/widgets/custom_search_view.dart';

class FriendsScreen extends GetWidget<FriendsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(53.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: onTapArrowleft4),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgGoogle50x50,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 16),
                      onTap: onTapGoogle)
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
                              Text("lbl_friends".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold32DeeppurpleA200),
                              CustomSearchView(
                                  width: 382,
                                  focusNode: FocusNode(),
                                  controller: controller.group9116Controller,
                                  hintText: "lbl_search".tr,
                                  margin: getMargin(top: 13),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15.00)),
                                      child: IconButton(
                                          onPressed: () {
                                            controller
                                                .group9116Controller.clear;
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40.00))),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Text("msg_connect_to_your".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold20)),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTwitter50x50,
                                        height: getSize(50.00),
                                        width: getSize(50.00),
                                        onTap: () {
                                          onTapImgTwitter();
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFacebook50x50,
                                        height: getSize(50.00),
                                        width: getSize(50.00),
                                        margin: getMargin(left: 30),
                                        onTap: () {
                                          onTapImgFacebook();
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                        height: getSize(50.00),
                                        width: getSize(50.00),
                                        margin: getMargin(left: 30)),
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        margin: getMargin(left: 32),
                                        variant: IconButtonVariant.FillRed300,
                                        shape: IconButtonShape.CircleBorder25,
                                        padding: IconButtonPadding.PaddingAll12,
                                        onTap: () {
                                          onTapBtnGoogleOne();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgGoogle1))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Text("lbl_recommeded".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold20)),
                              Padding(
                                  padding: getPadding(top: 20),
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
                                      itemCount: controller.friendsModelObj
                                          .value.friendsItemList.length,
                                      itemBuilder: (context, index) {
                                        FriendsItemModel model = controller
                                            .friendsModelObj
                                            .value
                                            .friendsItemList[index];
                                        return FriendsItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapImgTwitter() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapBtnGoogleOne() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapArrowleft4() {
    Get.back();
  }

  onTapGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
