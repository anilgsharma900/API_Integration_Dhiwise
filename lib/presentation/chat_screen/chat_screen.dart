import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_circleimage.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/widgets/custom_floating_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class ChatScreen extends GetWidget<ChatController> {
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
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: onTapClose1),
                centerTitle: true,
                title: Text("lbl_garry_willer".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold20Black900),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse14,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 8))
                ]),
            body: Container(
                width: size.width,
                margin: getMargin(top: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.deepPurple50)),
                      Container(
                          width: getHorizontalSize(230.00),
                          margin: getMargin(top: 41, right: 16),
                          padding: getPadding(
                              left: 22, top: 12, right: 22, bottom: 12),
                          decoration: AppDecoration.fillDeeppurpleA200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_hi_larry_how_a".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14))
                              ])),
                      Padding(
                          padding: getPadding(top: 8, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("lbl_delivered".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12Gray60002),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark10x15,
                                    height: getVerticalSize(10.00),
                                    width: getHorizontalSize(15.00),
                                    margin:
                                        getMargin(left: 12, top: 2, bottom: 2))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(286.00),
                              margin: getMargin(left: 16, top: 23),
                              padding: getPadding(
                                  left: 20, top: 12, right: 20, bottom: 12),
                              decoration: AppDecoration.fillIndigo50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(218.00),
                                        margin: getMargin(top: 2),
                                        child: Text("msg_hello_gerry_i_m".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeeboRegular15))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24),
                              child: Row(children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.img49,
                                          height: getVerticalSize(65.00),
                                          width: getHorizontalSize(109.00),
                                          radius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  getHorizontalSize(15.00)))),
                                      CustomImageView(
                                          imagePath: ImageConstant.img50,
                                          height: getVerticalSize(65.00),
                                          width: getHorizontalSize(109.00),
                                          radius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                  getHorizontalSize(15.00))),
                                          margin: getMargin(top: 2))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.img51,
                                    height: getVerticalSize(130.00),
                                    width: getHorizontalSize(160.00),
                                    radius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            getHorizontalSize(15.00)),
                                        bottomRight: Radius.circular(
                                            getHorizontalSize(15.00))),
                                    margin: getMargin(left: 2, bottom: 2))
                              ]))),
                      CustomButton(
                          height: 45,
                          width: 179,
                          text: "lbl_wow_awesome".tr,
                          margin: getMargin(top: 24, right: 16),
                          variant: ButtonVariant.FillDeeppurpleA200,
                          shape: ButtonShape.CustomBorderTL15,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterRegular14),
                      Padding(
                          padding: getPadding(top: 8, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("lbl_delivered".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12Gray60002),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark10x15,
                                    height: getVerticalSize(10.00),
                                    width: getHorizontalSize(15.00),
                                    margin:
                                        getMargin(left: 12, top: 2, bottom: 2))
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 39),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder25),
                child: Row(children: [
                  CustomTextFormField(
                      width: 316,
                      focusNode: FocusNode(),
                      controller: controller.frameThirtySixController,
                      hintText: "lbl_write_a_comment".tr,
                      margin: getMargin(right: 66),
                      variant: TextFormFieldVariant.FillGray10001,
                      padding: TextFormFieldPadding.PaddingT16_2,
                      fontStyle: TextFormFieldFontStyle.InterMedium14Gray50002,
                      textInputAction: TextInputAction.done)
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                child: CustomImageView(
                    svgPath: ImageConstant.imgSend50x50,
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(25.00)))));
  }

  onTapClose1() {
    Get.back();
  }
}
