import '../account_details_screen/widgets/listeight_item_widget.dart';
import '../account_details_screen/widgets/listellipsefifteen2_item_widget.dart';
import 'controller/account_details_controller.dart';
import 'models/listeight_item_model.dart';
import 'models/listellipsefifteen2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_button.dart';

class AccountDetailsScreen extends GetWidget<AccountDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(273.00),
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle3809273x414,
                                            height: getVerticalSize(273.00),
                                            width: getHorizontalSize(414.00),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    top: 13, bottom: 13),
                                                decoration: AppDecoration
                                                    .gradientWhiteA70000Black900ad,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomAppBar(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          leadingWidth: 40,
                                                          leading: AppbarImage(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              svgPath: ImageConstant
                                                                  .imgArrowleftDeepPurpleA200,
                                                              margin: getMargin(
                                                                  left: 16),
                                                              onTap:
                                                                  onTapArrowleft2),
                                                          actions: [
                                                            AppbarImage(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup9164,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            16,
                                                                        right:
                                                                            16))
                                                          ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 161,
                                                              right: 16,
                                                              bottom: 12),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse11,
                                                                    height:
                                                                        getSize(
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
                                                                        top: 1),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_rosalia".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold20WhiteA700),
                                                                          Padding(
                                                                              padding: getPadding(top: 5),
                                                                              child: Text("lbl_rose23".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14))
                                                                        ])),
                                                                Spacer(),
                                                                Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: getMargin(
                                                                        top: 9,
                                                                        bottom:
                                                                            8),
                                                                    shape: RoundedRectangleBorder(
                                                                        side: BorderSide(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            width: getHorizontalSize(
                                                                                1.00)),
                                                                        borderRadius:
                                                                            BorderRadiusStyle.roundedBorder15),
                                                                    child: Container(
                                                                        height: getSize(33.00),
                                                                        width: getSize(33.00),
                                                                        padding: getPadding(all: 4),
                                                                        decoration: AppDecoration.outlineWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgUser24x24,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                                CustomButton(
                                                                    height: 33,
                                                                    width: 76,
                                                                    text:
                                                                        "lbl_follow"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            24,
                                                                        top: 9,
                                                                        bottom:
                                                                            8),
                                                                    variant:
                                                                        ButtonVariant
                                                                            .OutlineWhiteA700,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .InterSemiBold14WhiteA700)
                                                              ]))
                                                    ])))
                                      ])),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 23),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 24, right: 26),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_post".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular20Gray50003),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_75".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold20DeeppurpleA200))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_following"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular20Gray50003),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 9),
                                                                child: Text(
                                                                    "lbl_3400"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold20DeeppurpleA200))
                                                          ])),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_followers".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular20Gray50003),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_6500".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold20DeeppurpleA200))
                                                      ])
                                                ])),
                                        Container(
                                            height: getVerticalSize(2.00),
                                            width: size.width,
                                            margin: getMargin(top: 23),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .deepPurple50)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, top: 20),
                                                child: Text("lbl_about_me".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold20Gray900))),
                                        Container(
                                            width: getHorizontalSize(380.00),
                                            margin: getMargin(top: 18),
                                            child: Text(
                                                "msg_introduce_my_na".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Gray700)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, top: 23),
                                                child: Text("lbl_photos".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold20Gray900))),
                                        Container(
                                            height: getVerticalSize(176.00),
                                            child: Obx(() => ListView.builder(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 15,
                                                    right: 16),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .accountDetailsModelObj
                                                    .value
                                                    .listeightItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListeightItemModel model =
                                                      controller
                                                          .accountDetailsModelObj
                                                          .value
                                                          .listeightItemList[index];
                                                  return ListeightItemWidget(
                                                      model);
                                                }))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, top: 22),
                                                child: Text("lbl_friends".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold20Gray900))),
                                        Container(
                                            height: getVerticalSize(80.00),
                                            child: Obx(() => ListView.builder(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 16,
                                                    right: 14),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .accountDetailsModelObj
                                                    .value
                                                    .listellipsefifteen2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listellipsefifteen2ItemModel
                                                      model = controller
                                                          .accountDetailsModelObj
                                                          .value
                                                          .listellipsefifteen2ItemList[index];
                                                  return Listellipsefifteen2ItemWidget(
                                                      model);
                                                })))
                                      ]))
                            ]))))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
