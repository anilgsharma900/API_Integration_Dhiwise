import 'controller/account_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/widgets/custom_icon_button.dart';

class AccountViewScreen extends GetWidget<AccountViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height,
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(645.00),
                                        width: size.width,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle3809,
                                                  height:
                                                      getVerticalSize(645.00),
                                                  width:
                                                      getHorizontalSize(414.00),
                                                  alignment: Alignment.center),
                                              CustomAppBar(
                                                  height:
                                                      getVerticalSize(24.00),
                                                  leadingWidth: 40,
                                                  leading: AppbarImage(
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      svgPath: ImageConstant
                                                          .imgArrowleftDeepPurpleA200,
                                                      margin:
                                                          getMargin(left: 16),
                                                      onTap: onTapArrowleft1),
                                                  actions: [
                                                    AppbarImage(
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        svgPath: ImageConstant
                                                            .imgGroup9164,
                                                        margin: getMargin(
                                                            left: 16,
                                                            right: 16))
                                                  ])
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: size.width,
                                        decoration: AppDecoration
                                            .gradientWhiteA70000Black900ad,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGroup,
                                                  height: getSize(130.00),
                                                  width: getSize(130.00),
                                                  margin: getMargin(top: 89)),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapColumnellipseeleven();
                                                  },
                                                  child: Container(
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 252),
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 33,
                                                          right: 16,
                                                          bottom: 33),
                                                      decoration: AppDecoration
                                                          .fillDeeppurpleA200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL30),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse11,
                                                                      height: getSize(
                                                                          50.00),
                                                                      width: getSize(
                                                                          50.00),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(25.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              24,
                                                                          top:
                                                                              1),
                                                                      child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("lbl_rosalia".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterSemiBold20WhiteA700),
                                                                            Padding(
                                                                                padding: getPadding(top: 5),
                                                                                child: Text("lbl_rose23".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14))
                                                                          ])),
                                                                  Spacer(),
                                                                  CustomButton(
                                                                      height:
                                                                          33,
                                                                      width: 98,
                                                                      text: "lbl_follow"
                                                                          .tr,
                                                                      margin: getMargin(
                                                                          top:
                                                                              9,
                                                                          bottom:
                                                                              8),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineWhiteA700,
                                                                      fontStyle:
                                                                          ButtonFontStyle
                                                                              .InterSemiBold16)
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 29,
                                                                        right:
                                                                            8),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("lbl_post".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterRegular20),
                                                                            Padding(
                                                                                padding: getPadding(top: 10),
                                                                                child: Text("lbl_75".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20WhiteA700))
                                                                          ]),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_following".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular20),
                                                                                Padding(padding: getPadding(top: 9), child: Text("lbl_3400".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20WhiteA700))
                                                                              ])),
                                                                      Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("lbl_followers".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterRegular20),
                                                                            Padding(
                                                                                padding: getPadding(top: 10),
                                                                                child: Text("lbl_6500".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20WhiteA700))
                                                                          ])
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            34,
                                                                        top: 29,
                                                                        right:
                                                                            34,
                                                                        bottom:
                                                                            24),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          variant: IconButtonVariant
                                                                              .FillWhiteA700,
                                                                          shape: IconButtonShape
                                                                              .CircleBorder25,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll15,
                                                                          onTap:
                                                                              () {
                                                                            onTapBtnGoogle();
                                                                          },
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgGoogle50x50)),
                                                                      CustomIconButton(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          variant: IconButtonVariant
                                                                              .FillWhiteA700,
                                                                          shape: IconButtonShape
                                                                              .CircleBorder25,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll15,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgComputer50x50)),
                                                                      CustomIconButton(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          variant: IconButtonVariant
                                                                              .FillWhiteA700,
                                                                          shape: IconButtonShape
                                                                              .CircleBorder25,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll15,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgCall))
                                                                    ]))
                                                          ])))
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }

  onTapColumnellipseeleven() {
    Get.toNamed(AppRoutes.accountDetailsScreen);
  }

  onTapBtnGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
