import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/widgets/custom_icon_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 3, right: 16, bottom: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("msg_create_a_new_ac".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("msg_it_s_fast_and_e".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextFormField(
                                    width: 183,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.frameThirtyController,
                                    hintText: "lbl_first_name".tr),
                                CustomTextFormField(
                                    width: 183,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.frameThirtyFourController,
                                    hintText: "lbl_last_name".tr)
                              ])),
                      CustomTextFormField(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.frameThirtyFiveController,
                          hintText: "lbl_email_id".tr,
                          margin: getMargin(top: 16),
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.frameThirtySixController,
                          hintText: "lbl_phone_no".tr,
                          margin: getMargin(top: 16),
                          textInputType: TextInputType.phone),
                      CustomTextFormField(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.frameThirtySevenController,
                          hintText: "lbl_date_of_birth".tr,
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT16,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 13, right: 16, bottom: 13),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalendar)),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(50.00))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_gender".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Obx(() => Row(children: []))),
                      Container(
                          width: getHorizontalSize(367.00),
                          margin: getMargin(left: 8, top: 43),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_by_clicking_reg2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_data_policy".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_and".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_cookie_polic".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "msg_y_you_will_rec".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.center)),
                      CustomButton(
                          height: 50,
                          width: 382,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium18,
                          onTap: onTapSignup)
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
}
