import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/widgets/custom_icon_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class LogInScreen extends GetWidget<LogInController> {
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
                padding: getPadding(left: 15, top: 3, right: 15, bottom: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          margin: getMargin(left: 1),
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(left: 1, top: 74),
                          child: Text("msg_welcome_to_soci2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      Padding(
                          padding: getPadding(left: 1, top: 13),
                          child: Text("msg_login_your_acco".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      CustomTextFormField(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.frameThirtyController,
                          hintText: "lbl_email_id".tr,
                          margin: getMargin(left: 1, top: 37),
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputType: TextInputType.emailAddress),
                      Obx(() => CustomTextFormField(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.frameThirtyOneController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(left: 1, top: 24),
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 16, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgEye
                                          : ImageConstant.imgEye))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50.00)),
                          isObscureText: !controller.isShowPassword.value)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword();
                              },
                              child: Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16)))),
                      CustomButton(
                          height: 50,
                          width: 382,
                          text: "lbl_log_in".tr,
                          margin: getMargin(left: 1, top: 38, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium18,
                          onTap: onTapLogin)
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapTxtForgotPassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
}
