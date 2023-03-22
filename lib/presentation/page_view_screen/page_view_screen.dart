import 'controller/page_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/widgets/custom_floating_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class PageViewScreen extends GetWidget<PageViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(53.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: onTapArrowleft),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgReply,
                      margin: getMargin(left: 16, top: 13, bottom: 16)),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgGroup8916,
                      margin:
                          getMargin(left: 24, top: 13, right: 16, bottom: 16))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 53, bottom: 50),
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(15.00)),
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1.24),
                        colors: [
                          ColorConstant.black9009e,
                          ColorConstant.black9009e
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageview),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    margin: getMargin(top: 287),
                    padding: getPadding(left: 16, right: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              height: 28,
                              width: 71,
                              text: "lbl_4_6".tr,
                              variant: ButtonVariant.FillDeeppurpleA200,
                              fontStyle: ButtonFontStyle.InterMedium14),
                          Container(
                              width: getHorizontalSize(300.00),
                              margin: getMargin(top: 32),
                              child: Text("msg_haliford_luxury".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold40)),
                          Container(
                              width: getHorizontalSize(381.00),
                              margin: getMargin(top: 36),
                              child: Text("msg_halford_hotel_i".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12)),
                          Padding(
                              padding: getPadding(top: 101),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse940x40,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1040x40,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(left: 13)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1140x40,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(left: 13)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getVerticalSize(17.00),
                                    width: getHorizontalSize(19.00),
                                    margin: getMargin(top: 12, bottom: 11)),
                                Padding(
                                    padding: getPadding(
                                        left: 8, top: 12, bottom: 12),
                                    child: Text("lbl_2200".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgUser18x19,
                                    height: getVerticalSize(18.00),
                                    width: getHorizontalSize(19.00),
                                    margin: getMargin(
                                        left: 29, top: 11, bottom: 11)),
                                Padding(
                                    padding: getPadding(
                                        left: 8, top: 13, bottom: 11),
                                    child: Text("lbl_800".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12))
                              ]))
                        ]))),
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
                      variant: TextFormFieldVariant.FillWhiteA70070,
                      padding: TextFormFieldPadding.PaddingT16_2,
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

  onTapArrowleft() {
    Get.back();
  }
}
